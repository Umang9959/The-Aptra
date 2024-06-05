import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_aptra/custom/menu_custom_grid.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<Map<String, String>> items = [
    {'title': 'Agenda', 'image': 'assets/images/menu/agenda_icon.png'},
    {'title': 'Speaker', 'image': 'assets/images/menu/speakers.png'},
    {'title': 'Contact Us', 'image': 'assets/images/menu/contact.png'},
    {'title': 'Venue', 'image': 'assets/images/menu/venue.png'},
    {'title': 'Sponsors', 'image': 'assets/images/menu/sponsors.png'},
    {'title': 'About Us', 'image': 'assets/images/menu/about.png'},
    {'title': 'Feedback', 'image': 'assets/images/menu/agenda_icon.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return GridItem(
                    title: items[index]['title']!,
                    image: items[index]['image']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
