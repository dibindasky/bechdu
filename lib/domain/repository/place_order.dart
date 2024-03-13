import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/date_tome_responce_model/date_tome_responce_model.dart';
import 'package:beachdu/domain/model/order_model/get_all_order_responce_model/get_all_order_responce_model.dart';
import 'package:beachdu/domain/model/order_model/order_cancelation_request_model/order_cancelation_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_cancelation_responce_model/order_cancelation_responce_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_request_model/order_placed_request_model.dart';
import 'package:beachdu/domain/model/order_model/order_placed_responce_model/order_placed_responce_model.dart';
import 'package:beachdu/domain/model/promo_code_model/promo_code_request_model/promo_code_request_model.dart';
import 'package:beachdu/domain/model/promo_code_model/promo_code_responce_model/promo_code_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class PlaceOrderRepo {
  Future<Either<Failure, PromoCodeResponceModel>> getPomoCode({
    required PromoCodeRequestModel promoCodeRequestModel,
  });
  Future<Either<Failure, OrderPlacedResponceModel>> orderPlacing({
    required OrderPlacedRequestModel orderPlacedRequestModel,
  });
  Future<Either<Failure, GetAllOrderResponceModel>> getOrders();
  Future<Either<Failure, OrderCancelationResponceModel>> orderCancel({
    required OrderCancelationRequestModel orderCancelationRequestModel,
    required String orderId,
  });
  Future<Either<Failure, DateTomeResponceModel>> getDateTime();
  Future<Either<Failure, String>> invoiceDownLoad({
    required String orderId,
    required String number,
  });
  Future<void> downloadInvoice({
    required String orderId,
    required String number,
  });
}
