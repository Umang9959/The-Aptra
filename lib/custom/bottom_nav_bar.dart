import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../Provider/bottom_nav.dart';
import '../Screens/agenda.dart';
import '../Screens/home.dart';
import '../Screens/menu.dart';
import '../Screens/speaker.dart';
import '../Screens/venue.dart';

class BottomNavBar extends StatelessWidget {
  final List<Widget> _pages = [
    const Home(),
    const Agenda(),
    const Menu(),
    const Speaker(),
    const Venue(),
  ];

  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            Expanded(
              child: IndexedStack(
                index: provider.currentIndex,
                children: _pages,
              ),
            ),
          ],
        );
      },
    );
  }
}