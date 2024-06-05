// Custom GridItem widget
import 'package:flutter/material.dart';
import 'package:the_aptra/Custom/bold_text.dart';
import 'package:the_aptra/custom/semi_b_text.dart';
import 'package:the_aptra/screens/speaker_details.dart';

class SpeakerGridItem extends StatelessWidget {
  final String name;
  final String image;
  final String post;
  final String office;
  final String bio;
  final String date;
  final String time;
  final String event;
  final String description;

  const SpeakerGridItem({
    required this.image,
    super.key,
    required this.name,
    required this.post,
    required this.office,
    required this.bio,
    required this.date,
    required this.time,
    required this.event,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpeakerDetailsScreen(
              name: name,
              bio: bio,
              image: image,
              post: post,
              office: office,
              date: date,
              time: time,
              description: description,
              event: event,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFfef4f3),
        ),
        height: 185,
        width: 185,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(image),
                ),
                BoldText(
                  text: name,
                  color: Colors.black,
                  size: 14,
                  fontStyle: "Figtree",
                ),
                SemiText(
                  text: post,
                  color: const Color(0xFF1A1712),
                  size: 12,
                  fontStyle: "Figtree",
                ),
                SemiText(
                  text: office,
                  color: const Color(0xFF1A1712),
                  size: 12,
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
