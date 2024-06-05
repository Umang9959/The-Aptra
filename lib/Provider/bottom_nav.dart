import 'package:flutter/foundation.dart';

class BottomNavBarProvider with ChangeNotifier {
  int _currentIndex = 0;
  List<String> _pageTitles = ['Home', 'Agenda', 'Menu', 'Speaker', 'Venue'];

  int get currentIndex => _currentIndex;
  String get pageTitle => _pageTitles[_currentIndex];

  void onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}