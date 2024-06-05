import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_aptra/Provider/bottom_nav.dart';
import 'package:the_aptra/Provider/tab_controller.dart';
import 'package:the_aptra/api/api_service.dart';

import 'Provider/container_dashboard.dart';
import 'Provider/login_provider.dart';
import 'Provider/timer_otp.dart';
import 'Screens/login.dart';

void main() {
  runApp(

    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
        ChangeNotifierProvider(create: (_) => ResendOTPModel()),
        ChangeNotifierProvider(create: (_) => TabControllerProvider()),
        ChangeNotifierProvider(create: (_) => ContainerVisibilityProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
      ],
      child: MyApp(),
    ),
  );
  init();
}

init() {
  ApiService apiService = ApiService();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
