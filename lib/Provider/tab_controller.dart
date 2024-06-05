import 'package:flutter/material.dart';

class TabControllerProvider with ChangeNotifier {
  late TabController? _tabController; // Made nullable to avoid late initialization error

  TabController? get tabController => _tabController;

  void initializeTabController(int length, TickerProvider vsync) { // Pass vsync as a parameter
    _tabController = TabController(length: length, vsync: vsync);
    notifyListeners();
  }

  @override
  void dispose() { // Override dispose method to dispose the TabController
    _tabController?.dispose();
    super.dispose();
  }
}