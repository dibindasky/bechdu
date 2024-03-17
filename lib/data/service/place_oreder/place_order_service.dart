import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/data/service/api_service.dart';
import 'package:beachdu/domain/core/api_endpoints/api_endpoints.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/date_tome_responce_model/date_tome_responce_model.dart';
import 'package:beachdu/domain/model/order_model/get_all_order_responce_model/get_all_order_responce_model.dart';
import 'package:beachdu/domain/model/order_model/invoice_download_responce_model/invoice_download_responce_model.dart';
import 'package:beachdu/domain/model/order_model/order_cancelation_request_model/order_cancelation_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_cancelation_responce_model/order_cancelation_responce_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/order_placed_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_responce_model/order_placed_responce_model.dart';
import 'package:beachdu/domain/model/promo_code_model/promo_code_request_model/promo_code_request_model.dart';
import 'package:beachdu/domain/model/promo_code_model/promo_code_responce_model/promo_code_responce_model.dart';
import 'package:beachdu/domain/repository/place_order.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PlaceOrderRepo)
@singleton
class PlaceOrderService implements PlaceOrderRepo {
  final ApiService _apiService;
  PlaceOrderService(this._apiService);
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));
  @override
  Future<Either<Failure, PromoCodeResponceModel>> getPomoCode({
    required PromoCodeRequestModel promoCodeRequestModel,
  }) async {
    try {
      final responce = await _apiService.post(
        addHeader: true,
        ApiEndPoints.getPromoCode,
        data: promoCodeRequestModel.toJson(),
      );
      return Right(PromoCodeResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, OrderPlacedResponceModel>> orderPlacing({
    required OrderPlacedRequestModel orderPlacedRequestModel,
  }) async {
    try {
      final responce = await _apiService.post(
        addHeader: true,
        ApiEndPoints.orderPlacing,
        data: orderPlacedRequestModel.toJson(),
      );
      return Right(OrderPlacedResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, GetAllOrderResponceModel>> getOrders() async {
    try {
      final number = await SecureSotrage.getNumber();
      final responce = await _apiService
          .get(ApiEndPoints.getOrders.replaceAll('{number}', number));
      return Right(GetAllOrderResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, OrderCancelationResponceModel>> orderCancel({
    required OrderCancelationRequestModel orderCancelationRequestModel,
    required String orderId,
  }) async {
    try {
      final responce = await _apiService.put(
        addHeader: true,
        ApiEndPoints.orderCancel.replaceAll('{order_id}', orderId),
        data: orderCancelationRequestModel.toJson(),
      );
      return Right(OrderCancelationResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, DateTomeResponceModel>> getDateTime() async {
    try {
      final responce = await _apiService.get(
        ApiEndPoints.dateTime,
      );
      return Right(DateTomeResponceModel.fromJson(responce.data));
    } on DioException catch (e) {
      log('getDateTime DioException $e');
      return Left(Failure(message: e.response?.data['error'] ?? errorMessage));
    } catch (e) {
      log('getDateTime catch $e');
      return Left(Failure(message: errorMessage));
    }
  }

  @override
  Future<Either<Failure, InvoiceDownloadResponceModel>> downloadInvoice({
    required String orderId,
    required String number,
  }) async {
    try {
      final url = ApiEndPoints.invoiceDownLoad
          .replaceAll('{order_id}', orderId)
          .replaceAll('{number}', number);
      final response = await _apiService
          .get(addHeader: true, url, data: {"orderID": orderId});
      log('${response.data}');
      return Right(InvoiceDownloadResponceModel.fromJson(response.data));
    } on DioException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: errorMessage));
    }
  }
}
