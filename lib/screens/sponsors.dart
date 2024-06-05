import 'package:flutter/material.dart';
import 'package:the_aptra/custom/bold_text.dart';
import 'package:the_aptra/custom/sponsors_screen_list_view.dart';

import '../Custom/semi_b_text.dart';
import '../components/sponsors_home.dart';

class SponsorsScreen extends StatelessWidget {
  const SponsorsScreen({super.key});

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
          text: "Sponsors",
          color: Colors.black,
          size: 25,
          fontStyle: "Figtree",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
            top: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: BoldText(
                  text: "Platinum Partners",
                  color: Color(0xFFE41E1B),
                  size: 18,
                  fontStyle: "Figtree",
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SponsorsListView(sponsorslistview: platinumpartners),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: BoldText(
                  text: "Gold Partners",
                  color: Color(0xFFE41E1B),
                  size: 18,
                  fontStyle: "Figtree",
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SponsorsListView(sponsorslistview: goldpartners),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: BoldText(
                  text: "Drink Partners",
                  color: Color(0xFFE41E1B),
                  size: 18,
                  fontStyle: "Figtree",
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SponsorsListView(sponsorslistview: drinkpartners),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    child: const BoldText(
                        text: "Load More",
                        color: Colors.black,
                        size: 14,
                        fontStyle: 'Figtree'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
