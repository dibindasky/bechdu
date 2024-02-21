import 'dart:developer';

import 'package:beachdu/domain/model/token_model/token_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureSotrage {
  static String accessKey = 'access_key';
  static String refershKey = 'refresh_key';
  static String idKey = 'id_key';
  static String loginKey = 'login_key';

  static const FlutterSecureStorage secureSotrage = FlutterSecureStorage();
  static Future<void> saveToken({
    required TokenModel tokenModel,
  }) async {
    await secureSotrage.write(
      key: accessKey,
      value: tokenModel.accessToken ?? '',
    );
    await secureSotrage.write(
      key: refershKey,
      value: tokenModel.refershToken ?? '',
    );
    await secureSotrage.write(
      key: idKey,
      value: tokenModel.id != null ? tokenModel.id.toString() : '',
    );
  }

  static Future<TokenModel> getToken() async {
    final accessToken = await secureSotrage.read(key: accessKey);
    final refreshToken = await secureSotrage.read(key: refershKey);
    log('AccessToken ===>> $accessToken');
    log('RefreshToken ===>> $refreshToken');
    return TokenModel(accessToken: accessToken, refershToken: refreshToken);
  }

  static Future<String?> getAccessToken() async {
    final accessToken = await secureSotrage.read(key: accessKey);
    log("getAccessToken ==>> $accessToken");
    return accessToken;
  }

  static Future<void> setLogin() async {
    log("setLogin ==>>");
    await secureSotrage.write(key: loginKey, value: '1');
  }

  static Future<bool> getlLogin() async {
    final isLogin = await secureSotrage.read(key: loginKey);
    log("getlLogin ==>> ${isLogin == '1'}");
    return isLogin == '1';
  }

  static Future<void> clearLogin() async {
    await secureSotrage.deleteAll();
  }
}
