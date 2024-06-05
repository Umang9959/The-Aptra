import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_aptra/Models/login_model.dart';
import 'package:the_aptra/api/api_service.dart';

import '../Screens/otp_page.dart';

class LoginProvider with ChangeNotifier {
  var isloading = false;

  Future<void> login(String loginvalue, BuildContext context) async {

    var request = {
      "mobile":loginvalue,
    };
    isloading = true;
    notifyListeners();
    LoginModel? loginModel = await apiService.login(request);
    isloading = false;
    notifyListeners();
    if (loginModel!.status! && loginModel.code == 200) {
      print(loginModel.message.toString());
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  OtpPage()));
    } else {
      print(loginModel.message.toString());
    }
  }
}
