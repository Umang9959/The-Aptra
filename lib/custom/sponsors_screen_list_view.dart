import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_aptra/Custom/semi_b_text.dart';
import 'package:the_aptra/screens/brand_details.dart';

import 'bold_text.dart';

class SponsorsListView extends StatelessWidget {
  final List<Map<String, dynamic>> sponsorslistview;

  SponsorsListView({super.key, required this.sponsorslistview});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sponsorslistview.length,
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: [
              InkWell(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BrandDetailScreen(
                        image: sponsorslistview[index]['image'],
                        title: sponsorslistview[index]['title'],
                        bio: sponsorslistview[index]['bio'],
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 180.34,
                  width: 182.48,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(220, 226, 230, 1),
                        blurRadius: .5,
                        spreadRadius: .5,
                        offset: Offset(0, 1),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          sponsorslistview[index]['image'],
                          height: 120.5,
                          width: 120.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
