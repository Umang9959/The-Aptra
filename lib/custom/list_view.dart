import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:the_aptra/Custom/semi_b_text.dart';
import 'package:the_aptra/components/alert_dialogbox.dart';

import '../Provider/bottom_nav.dart';
import 'bold_text.dart';

class CustomListViewBuilder extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  CustomListViewBuilder({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          int newIndex;
          VoidCallback onTap;
          switch (items[index]['title']) {
            case 'Agenda':
              newIndex = 1;
              onTap = () {
                Provider.of<BottomNavBarProvider>(context, listen: false).onTap(newIndex);
              };
              break;
            case 'Venue':
              newIndex = 4;
              onTap = () {
                Provider.of<BottomNavBarProvider>(context, listen: false).onTap(newIndex);
              };
              break;
            case 'About Us':
              onTap = () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return DialogBoxx();
                  },
                );
              };
              break;
            default:
              newIndex = 0;
              onTap = () {
                Provider.of<BottomNavBarProvider>(context, listen: false).onTap(newIndex);
              };
          }
          return AgendaItem(
            item: items[index],
            onTap: onTap,
          );
        },
      ),
    );
  }
}

class AgendaItem extends StatelessWidget {
  final Map<String, dynamic> item;
  final VoidCallback onTap;

  AgendaItem({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      child: Container(
        width: 120,
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFE41E1B),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SemiText(
                text: item['title'],
                color: Colors.white,
                size: 14,
                fontStyle: 'Figtree',
              ),
              const SizedBox(height: 10),
              SvgPicture.asset(
                item['image'],
                height: 40,
                width: 40,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}