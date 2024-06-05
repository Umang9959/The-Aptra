// Custom GridItem widget
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:the_aptra/Custom/bold_text.dart';
import 'package:the_aptra/custom/semi_b_text.dart';
import 'package:the_aptra/screens/contact_us.dart';
import 'package:the_aptra/screens/sponsors.dart';

import '../Provider/bottom_nav.dart';
import '../components/alert_dialogbox.dart';

class GridItem extends StatelessWidget {
  final String title;
  final String image;

  const GridItem({required this.title, required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    VoidCallback onTap;
    int newIndex;
    switch (title) {
      case 'Agenda':
        newIndex = 1;
        onTap = () {
          Provider.of<BottomNavBarProvider>(context, listen: false)
              .onTap(newIndex);
        };
        break;
      case 'Venue':
        newIndex = 4;
        onTap = () {
          Provider.of<BottomNavBarProvider>(context, listen: false)
              .onTap(newIndex);
        };
        break;
      case 'Speaker':
        newIndex = 3;
        onTap = () {
          Provider.of<BottomNavBarProvider>(context, listen: false)
              .onTap(newIndex);
        };
        break;
      case 'Sponsors':
        newIndex = 4;
        onTap = () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SponsorsScreen(),
            ),
          );
        };
        break;
      case 'Contact Us':
        newIndex = 4;
        onTap = () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContactUsScreen(),
            ),
          );
        };
        break;
      case 'About Us':
        onTap = () {
          showDialog(
            context: context,
            builder: (context) {
              return const DialogBoxx();
            },
          );
        };
        break;
      default:
        newIndex = 0;
        onTap = () {
          Provider.of<BottomNavBarProvider>(context, listen: false)
              .onTap(newIndex);
        };
    }
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFE63431),
        ),
        height: 100,
        width: 120,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            BoldText(
                text: title,
                color: Colors.white,
                size: 14,
                fontStyle: "Figtree"),
          ],
        ),
      ),
    );
  }
}
