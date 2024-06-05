import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_aptra/Custom/semi_b_text.dart';
import 'package:the_aptra/custom/normal_text.dart';

import 'bold_text.dart';

class CustomVenueList extends StatelessWidget {
  final List<Map<String, dynamic>> venues;

  const CustomVenueList({super.key, required this.venues});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: venues.length,
      separatorBuilder: (BuildContext context, int index) {
        if (index < venues.length - 1) {
          return const Divider(
            height: 1,
            color: Color(0xFFE5E5E5),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
      itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  venues[index]['image'],
                  height: 174,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BoldText(
                      text: venues[index]['date'],
                      color: Color(0xFFE41E1B),
                      size: 16,
                      fontStyle: "Figtree",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BoldText(
                      text: venues[index]['location'],
                      color: Colors.black,
                      size: 20,
                      fontStyle: "Figtree",
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
