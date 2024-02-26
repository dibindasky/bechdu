import 'dart:developer';
import 'package:beachdu/domain/model/token_model/token_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureSotrage {
  static String accessKey = 'access_key';
  static String refershKey = 'refresh_key';
  static String idKey = 'id_key';
  static String loginKey = 'login_key';
  static String locationkey = 'location_key';
  static String pincodekey = 'pincode_key';
  static String phoneNumberKey = 'phone_number';

  static const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  static Future<void> saveToken({
    required TokenModel tokenModel,
  }) async {
    await secureStorage.write(
      key: accessKey,
      value: tokenModel.accessToken ?? '',
    );
    await secureStorage.write(
      key: refershKey,
      value: tokenModel.refershToken ?? '',
    );
    await secureStorage.write(
      key: idKey,
      value: tokenModel.id != null ? tokenModel.id.toString() : '',
    );
  }

  static Future<TokenModel> getToken() async {
    final accessToken = await secureStorage.read(key: accessKey);
    final refreshToken = await secureStorage.read(key: refershKey);
    log('AccessToken ===>> $accessToken');
    log('RefreshToken ===>> $refreshToken');
    return TokenModel(accessToken: accessToken, refershToken: refreshToken);
  }

  static Future<String?> getAccessToken() async {
    final accessToken = await secureStorage.read(key: accessKey);
    log("getAccessToken ==>> $accessToken");
    return accessToken;
  }

  static Future<void> setLogin() async {
    log("setLogin ==>>");
    await secureStorage.write(key: loginKey, value: '1');
  }

  static Future<bool> getlLogin() async {
    final isLogin = await secureStorage.read(key: loginKey);
    log("getlLogin ==>> ${isLogin == '1'}");
    return isLogin == '1';
  }

  static Future<void> saveNumber({required String phoneNumber}) async {
    await secureStorage.write(key: phoneNumberKey, value: phoneNumber);
    log('saveNumber $phoneNumber');
  }

  static Future<String> getNumber() async {
    final phoneNumber = await secureStorage.read(key: phoneNumberKey);
    log('getNumber $phoneNumber');
    return phoneNumber ?? '';
  }

  static Future<void> setLocation({required String location}) async {
    await secureStorage.write(key: locationkey, value: location);
  }

  static Future<String> getSelectedLocation() async {
    final location = await secureStorage.read(key: locationkey);
    log('Selected location $location');
    return location ?? '';
  }

  static Future<void> setPincode({required String pincode}) async {
    await secureStorage.write(key: pincodekey, value: pincode);
  }

  static Future<String> getSelectedPincode() async {
    final isPincode = await secureStorage.read(key: pincodekey);
    log('getSelectedPincode $isPincode');
    return isPincode ?? '';
  }

  static Future<void> setPicodeBool() async {
    log("setPicodeBool ==>>");
    await secureStorage.write(key: pincodekey, value: '1');
  }

  static Future<bool> getPicodeBool() async {
    final isPincode = await secureStorage.read(key: pincodekey);
    log("getPicodeBool ==>> ${isPincode == '1'}");
    return isPincode == '1';
  }

  static Future<void> clearLogin() async {
    await secureStorage.deleteAll();
  }
}
