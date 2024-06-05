import 'dart:async';

import 'package:flutter/material.dart';

class ResendOTPModel with ChangeNotifier {
  int _timer = 60;
  bool _isResendButtonDisabled = false;

  int get timer => _timer;
  bool get isResendButtonDisabled => _isResendButtonDisabled;

  void startTimer() {
    _timer = 60;
    _isResendButtonDisabled = true;
    notifyListeners();

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timer > 0) {
        _timer--;
      } else {
        _isResendButtonDisabled = false;
        notifyListeners();
        timer.cancel();
      }
      notifyListeners();
    });
  }
}