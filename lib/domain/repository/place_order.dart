import 'package:beachdu/domain/core/failure/failure.dart';
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
}
