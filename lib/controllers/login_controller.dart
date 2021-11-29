import 'package:flutter/material.dart';
import 'package:movieapp/service/prefs_service.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  String? _pass;

  setLogin(String value) => _login = value;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 2));
    inLoader.value = false;
    if (_login == 'admin' && _pass == 'admin') {
      PrefsService.save(_login!);
      return true;
    }
    return false;
  }
}
