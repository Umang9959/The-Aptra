import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_aptra/custom/bold_text.dart';

import '../Custom/normal_text.dart';
import '../Custom/semi_b_text.dart';
import 'notification.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
            child: SvgPicture.asset(
              "assets/images/notif.svg",
              height: 26.3,
              width: 21.41,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(
              "assets/images/prof.png",
              width: 32,
              height: 32,
            ),
          ),
        ],
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF6F6F6F),
            ),
            onPressed: () {
              // Navigate back to the previous screen by popping the current route
              Navigator.of(context).pop();
            }),
        title: const SemiText(
          text: "Contact Us",
          color: Colors.black,
          size: 25,
          fontStyle: "Figtree",
        ),
        automaticallyImplyLeading: false,
        shadowColor: Colors.black,
      ),
      body: const Padding(
        padding: EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                BoldText(
                  text: "For Event Enquiries",
                  color: Color(0xFFE41E1B),
                  size: 18,
                  fontStyle: "Figtree",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 210,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BoldText(
                        text: "Anne Kavanagh",
                        color: Color(0xFF000000),
                        size: 18,
                        fontStyle: "Figtree",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: NormalText(
                          text: "anne.kavanagh@aptra.asia",
                          color: Color(0xFF000000),
                          size: 18,
                          fontStyle: "Figtree",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BoldText(
                        text: "Sharolyn Paul",
                        color: Color(0xFF000000),
                        size: 18,
                        fontStyle: "Figtree",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: NormalText(
                          text: "Sharolyn.paul@aptra.asia",
                          color: Color(0xFF000000),
                          size: 18,
                          fontStyle: "Figtree",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
