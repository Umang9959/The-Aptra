import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_aptra/Custom/bold_text.dart';
import 'package:the_aptra/Custom/normal_text.dart';
import '../Custom/semi_b_text.dart';

class SpeakerSessionScreen extends StatefulWidget {
  final String name;
  final String bio;
  final String image;
  final String post;
  final String office;
  final String date;
  final String time;
  final String event;
  final String description;

  const SpeakerSessionScreen({
    super.key,
    required this.name,
    required this.bio,
    required this.image,
    required this.post,
    required this.office,
    required this.date,
    required this.time,
    required this.event,
    required this.description,
  });

  @override
  State<SpeakerSessionScreen> createState() => _SpeakerSessionScreenState();
}

class _SpeakerSessionScreenState extends State<SpeakerSessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          text: "Session Details",
          color: Colors.black,
          size: 25,
          fontStyle: "Figtree",
        ),
        automaticallyImplyLeading: false,
        shadowColor: Colors.black,
      ),
      backgroundColor: const Color(0xFFfef4f3),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NormalText(
                    text: '${widget.date} | ${widget.time}',
                    color: Colors.black,
                    size: 16,
                    fontStyle: "Figtree",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 0,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          "assets/images/Google.svg",
                          height: 25,
                          width: 25,
                        ),
                        SvgPicture.asset(
                          "assets/images/outlook.svg",
                          height: 25,
                          width: 25,
                        ),
                        SvgPicture.asset(
                          "assets/images/apple.svg",
                          height: 25,
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SemiText(
                    text: widget.event,
                    color: Color(0xFF333333),
                    size: 20,
                    fontStyle: "Figtree",
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SemiText(
                    text: widget.description,
                    color: Color(0xFF333333),
                    size: 20,
                    fontStyle: "Figtree",
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
