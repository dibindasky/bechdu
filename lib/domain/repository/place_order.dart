import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/place_order/promo_code_request_model/promo_code_request_model.dart';
import 'package:beachdu/domain/model/place_order/promo_code_responce_model/promo_code_responce_model.dart';
import 'package:dartz/dartz.dart';

abstract class PlaceOrderRepo {
  Future<Either<Failure, PromoCodeResponceModel>> getPomoCode({
    required PromoCodeRequestModel promoCodeRequestModel,
  });
}
