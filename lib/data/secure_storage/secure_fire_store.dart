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
  static String locationBool = 'location_bool';
  static String pincodeBool = 'pincode_bool';
  static String phoneNumberKey = 'phone_number';
  static String onboardBool = 'on_board_bool';
  static String setlocatioSkipd = 'set_locatio_Skip';
  static const String notificationKey = 'notification_key';

  static const FlutterSecureStorage secureStorage = FlutterSecureStorage();
  static const FlutterSecureStorage onBoardVistedSecure =
      FlutterSecureStorage();

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

  static Future<void> setlocationSkipdBool() async {
    log("setlocatioSkipdBool ==>>");
    await onBoardVistedSecure.write(key: setlocatioSkipd, value: '1');
  }

  static Future<bool> getlocatioSkipBool() async {
    final onBoard = await onBoardVistedSecure.read(key: setlocatioSkipd);
    log("getlocatioSkipBool ${onBoard == '1'}");
    return onBoard == '1';
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

  static Future<void> setNotification({required int length}) async {
    await secureStorage.write(key: notificationKey, value: length.toString());
  }

  static Future<int> getNotification() async {
    final String? notiString = await secureStorage.read(key: notificationKey);
    final int noti = notiString != null ? int.parse(notiString) : 0;
    return noti;
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

  static Future<void> setLocationBool() async {
    log("setLocationBool ==>>");
    await secureStorage.write(key: locationBool, value: '1');
  }

  static Future<void> setPicodeBool() async {
    log("setPicodeBool ==>>");
    await secureStorage.write(key: pincodeBool, value: '1');
  }

  static Future<void> setOnboardBool() async {
    log("setOnboardBool ==>>");
    await onBoardVistedSecure.write(key: onboardBool, value: '1');
  }

  static Future<bool> getOnboardBool() async {
    final onBoard = await onBoardVistedSecure.read(key: onboardBool);
    log("getOnboardBool ${onBoard == '1'}");
    return onBoard == '1';
  }

  static Future<bool> getLocationBool() async {
    final isPincode = await secureStorage.read(key: locationBool);
    log("getPicodeBool ==>> ${isPincode == '1'}");
    return isPincode == '1';
  }

  static Future<bool> getPicodeBool() async {
    final isPincode = await secureStorage.read(key: pincodeBool);
    log("getPicodeBool ==>> ${isPincode == '1'}");
    return isPincode == '1';
  }

  static Future<void> clearLogin() async {
    await secureStorage.deleteAll();
  }
}
