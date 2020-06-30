import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import '../models/http_exception.dart';
class Auth with ChangeNotifier{
  String _token;
  DateTime _expiryDate;
  String _userId;
  Timer authTimer;
  bool get isAuth {
    return _token != null;
  }

  String get token {
    if (_expiryDate != null &&
        _expiryDate.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    }
    return null;
  }
  String get userId{
    return _userId;
  }

  Future<void> _authenticate(
      String email, String password, String urlSegment) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyBvLr43PsQ1WyohdIZ46IbNkxWjenOAJhE';
    try {
      final response = await http.post(url,
          body: json.encode({
            'email': email,
            'password': password,
            'returnSecureToken': true,
          }));
      final responseData = json.decode(response.body);
      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }
      _token = responseData['idToken'];
      _userId = responseData['localId'];
      _expiryDate = DateTime.now()
          .add(Duration(seconds: int.parse(responseData['expiresIn'])));
      _autoLogout();
      notifyListeners();
      final userData=json.encode({'token':_token,'userId':_userId,'expiryDate':_expiryDate.toIso8601String()});
    } catch (error) {
      throw error;
    }
  }

  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }
  Future<void> logout() async{
    _token=null;
    _userId=null;
    _expiryDate=null;
    if(authTimer!=null){
      authTimer.cancel();
      authTimer=null;
    }

    notifyListeners();
  }
  void _autoLogout(){
    if(authTimer!=null){
      authTimer.cancel();
    }
    final timeToExpiry=_expiryDate.difference(DateTime.now()).inSeconds;
    authTimer=Timer(Duration(seconds: timeToExpiry),logout);
  }
}