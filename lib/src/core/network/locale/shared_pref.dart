import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';


class SharedPref {
  static  SharedPreferences? _prefs;


  static init() async
  {
    _prefs = await SharedPreferences.getInstance();
  }

  List<Map<String, dynamic>>? list;

  static Future<bool> saveUserId(
  {
    required String key,
    required dynamic value,
  }) async
  {
    if(value is String) return await _prefs!.setString(key, value);
    if(value is int) return await _prefs!.setInt(key, value);
    if(value is bool) return await _prefs!.setBool(key, value);
    return  await _prefs!.setDouble(key, value);
  }

  static dynamic getUserId(
      {
        required String key,
      })
  {
    return _prefs!.get(key);
  }

  static Future<bool> saveLocalLang(
      {
        required String key,
        required dynamic value,
      }) async
  {
    return await _prefs!.setString(key, value);
  }

  static dynamic geLocalLang(
      {
        required String key,
      })
  {
    return _prefs!.get(key);
  }

  static dynamic clearUserId ({required String key}){
    return _prefs!.remove(key);
  }

  static Future<bool> saveProfileId(
      {
        required String key,
        required dynamic value,
      }) async
  {
    if(value is String) return await _prefs!.setString(key, value);
    if(value is int) return await _prefs!.setInt(key, value);
    if(value is bool) return await _prefs!.setBool(key, value);
    if(value is bool) return await _prefs!.setBool(key, value);
    return  await _prefs!.setDouble(key, value);
  }

  static dynamic getProfileId(
      {
        required String key,
      })
  {
    return _prefs!.get(key);
  }

  static dynamic clearProfileId ({required String key}){
    return _prefs!.remove(key);
  }

  static Future<bool> saveAccountType(
      {
        required String key,
        required dynamic value,
      }) async
  {
    if(value is String) return await _prefs!.setString(key, value);
    if(value is int) return await _prefs!.setInt(key, value);
    if(value is bool) return await _prefs!.setBool(key, value);
    return  await _prefs!.setDouble(key, value);
  }


  static dynamic getAccountType(
      {
        required String key,
      })
  {
    return _prefs!.get(key);
  }

  static dynamic clearAccountType ({required String key}){
    return _prefs!.remove(key);
  }

  static void clearTest (){
      _prefs!.clear();
      log('clear succ');

  }


}