import 'dart:convert';

import '../Models/login_model.dart';
import '../helper/digestauthclient.dart';
import 'app_url.dart';

ApiService apiService = ApiService();
class ApiService {
  //var cphiHeaders;
  var authHeader;
 // var DIGEST_AUTH_USERNAME = "";
  //var DIGEST_AUTH_PASSWORD = "";


 var  DIGEST_AUTH_USERNAME = "41ab073b088c9b12b231643ff6f437d9";
 var DIGEST_AUTH_PASSWORD = "9381edb30e889126282379eae2bf2aee";
  // _authManager = Get.find();
 var cphiHeaders = {
  "Content-Type": "application/json",
  "X-Api-Key": "%2BiR%2Ftt9g8E1tk1%2BDCJgiO7i5XrI%3D",
  "X-Requested-With": "XMLHttpRequest",
  "dc-timezone": "-330",
  "User-Agent": 'android'.toUpperCase(),
  "Dc-OS": 'android'.toLowerCase(),
  "Dc-Device": 'mobile'.toLowerCase(),
  "Dc-Platform": "flutter",
  "Dc-OS-Version": '',
  "DC-UUID": "",
  "Dc-App-Version": "1"
  };

 /* Future<ApiService> init() async {


    return this;
  }*/

  // dynamic getHeaders() {
  //   //dc-device-id, dc-os, dc-os-version
  //   authHeader = {
  //     "Content-Type": "application/json",
  //     "X-Api-Key": '%2BiR%2Ftt9g8E1tk1%2BDCJgiO7i5XrI%3D',
  //     "X-Requested-With": "XMLHttpRequest",
  //     "dc-timezone": "-330",
  //     //"Cookie": _authManager.prefs.getString("token") ?? "",
  //     "User-Agent": _authManager.osName.toUpperCase(),
  //     "Dc-OS": _authManager.osName,
  //     "Dc-Device": _authManager.dc_device,
  //     "Dc-Platform": "flutter",
  //     "Dc-OS-Version": _authManager.platformVersion,
  //     "DC-UUID": "",
  //     "Dc-App-Version": "1"
  //   };
  //   return authHeader!;
  // }

  Future<LoginModel?> login(dynamic body) async {
    try {

      print("Appurl - ${AppUrl.login}");
      print("body--${jsonEncode(body)}");
      final response =
      await DigestAuthClient(DIGEST_AUTH_USERNAME, DIGEST_AUTH_PASSWORD)
          .post(Uri.parse(AppUrl.login),
          headers: cphiHeaders, body: jsonEncode(body))
          .timeout(const Duration(seconds: 20));

      print("respopnse ----${response.body}");
      if (json.decode(response.body)["status"]) {
        // _authManager.prefs
        //     .setString("token", response.headers['set-cookie'].toString());
      } else {
        // _authManager.prefs.setString("token", "");
      }
      // isDialogShow = false;
      return LoginModel.fromJson(json.decode(response.body));
    } catch (e) {
      // checkException(e);
      rethrow;
    }
  }
}