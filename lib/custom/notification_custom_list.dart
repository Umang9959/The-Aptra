import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_aptra/Custom/semi_b_text.dart';
import 'package:the_aptra/custom/normal_text.dart';

import 'bold_text.dart';

class CustomNotificationList extends StatelessWidget {
  final List<Map<String, dynamic>> notifications;

  CustomNotificationList({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: notifications.length,
      itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            width: 372,
            margin: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFfef4f3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        NormalText(
                          text: notifications[index]['date'],
                          color: Colors.black,
                          size: 16,
                          fontStyle: 'Figtree',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: BoldText(
                                  text: notifications[index]['title'],
                                  color: Colors.black,
                                  size: 16,
                                  fontStyle: 'Figtree',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: NormalText(
                                  text: notifications[index]['message'],
                                  color: Colors.black,
                                  size: 16,
                                  fontStyle: 'Figtree',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
