import 'package:flutter/foundation.dart';

class ContainerVisibilityProvider extends ChangeNotifier {
  bool _isContainerVisible = false;

  bool get isContainerVisible => _isContainerVisible;

  void toggleContainerVisibility() {
    _isContainerVisible = !_isContainerVisible;
    notifyListeners();
  }
}