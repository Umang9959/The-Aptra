import 'package:flutter/material.dart';
import 'package:the_aptra/Custom/normal_text.dart';
import 'package:the_aptra/custom/bold_text.dart';
import 'package:the_aptra/custom/sponsors_screen_list_view.dart';

import '../Custom/semi_b_text.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              // Navigate back to the previous screen by popping the current route
              Navigator.of(context).pop();
            }),
        title: const SemiText(
          text: "My Profile",
          color: Colors.black,
          size: 25,
          fontStyle: "Figtree",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFfef4f3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/myprof.png",
                      width: 80,
                      height: 80,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BoldText(
                          text: "Olive",
                          color: Colors.black,
                          size: 20,
                          fontStyle: "Figtree",
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        SemiText(
                          text: "Business Manage",
                          color: Colors.black,
                          size: 15,
                          fontStyle: "Figtree",
                        ),
                        SemiText(
                          text: "At Logitech Pvt Ltd",
                          color: Colors.black,
                          size: 15,
                          fontStyle: "Figtree",
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/edit.png",
                                height: 12,
                                width: 12,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const SemiText(
                                text: "Edit",
                                color: Colors.white,
                                size: 12,
                                fontStyle: "Figtree",
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BoldText(
              text: "Contact Details",
              color: Color(0xFFE41E1B),
              size: 16,
              fontStyle: "Figtree",
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/email.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const NormalText(
                  text: "akumar@logitech.com",
                  color: Colors.black,
                  size: 16,
                  fontStyle: "Figtree",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
