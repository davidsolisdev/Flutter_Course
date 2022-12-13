/*
* flutter pub add shared_preferences 
*/

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider {
  SharedPreferencesProvider() {
    _init();
  }
  late SharedPreferences _prefs;
  Future _init() async => _prefs = await SharedPreferences.getInstance();

  static SharedPreferencesProvider prefs = SharedPreferencesProvider();

  // * GETERS
  String? get getToken => _prefs.getString('token');

  // * SETERS
  Future<bool> setToken(String token) async =>
      await _prefs.setString('token', token);

  // * CLEARS
  Future<bool> clearToken() async => await _prefs.remove('token');
}
