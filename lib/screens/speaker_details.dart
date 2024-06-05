import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_aptra/custom/bold_text.dart';
import 'package:the_aptra/screens/session_details_speaker.dart';

import '../Custom/normal_text.dart';
import '../Custom/semi_b_text.dart';

class SpeakerDetailsScreen extends StatefulWidget {
  final String name;
  final String bio;
  final String image;
  final String post;
  final String office;
  final String date;
  final String time;
  final String event;
  final String description;

  const SpeakerDetailsScreen({
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
  _SpeakerDetailsScreenState createState() => _SpeakerDetailsScreenState();
}

class _SpeakerDetailsScreenState extends State<SpeakerDetailsScreen> {
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
          text: "Speaker Details",
          color: Colors.black,
          size: 25,
          fontStyle: "Figtree",
        ),
        automaticallyImplyLeading: false,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          right: 15,
          left: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.image),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SemiText(
                    text: widget.name,
                    color: Colors.black,
                    size: 25,
                    fontStyle: "Figtree",
                  ),
                  NormalText(
                    text: widget.post,
                    color: Colors.black,
                    size: 16,
                    fontStyle: "Figtree",
                  ),
                  NormalText(
                    text: widget.office,
                    color: Colors.black,
                    size: 16,
                    fontStyle: "Figtree",
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const BoldText(
                text: "Bio",
                color: Color(0xFFE41E1B),
                size: 20,
                fontStyle: "Figtree",
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFfef4f3),
                ),
                height: 120,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SemiText(
                    text: widget.bio,
                    color: const Color(0xFF1A1712),
                    size: 16,
                    fontStyle: "Figtree",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const BoldText(
                text: "Social Media",
                color: Color(0xFFE41E1B),
                size: 20,
                fontStyle: "Figtree",
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: SvgPicture.asset(
                      "assets/images/facebook.svg",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: SvgPicture.asset(
                      "assets/images/twitter.svg",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const BoldText(
                text: "Session",
                color: Color(0xFFE41E1B),
                size: 20,
                fontStyle: "Figtree",
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 400,
                height: 320,
                decoration: BoxDecoration(
                  color: const Color(0xFFfef4f3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 360,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    BoldText(
                                      text: widget.date,
                                      color: Colors.black,
                                      size: 20,
                                      fontStyle: "Figtree",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    NormalText(
                                      text: widget.time,
                                      color: Colors.black,
                                      size: 20,
                                      fontStyle: "Figtree",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BoldText(
                        text: widget.event,
                        color: Colors.black,
                        size: 20,
                        fontStyle: "Figtree",
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SemiText(
                        text: widget.description,
                        color: Colors.black,
                        size: 18,
                        fontStyle: "Figtree",
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SpeakerSessionScreen(
                                name: widget.name,
                                bio: widget.bio,
                                image: widget.image,
                                post: widget.post,
                                office: widget.office,
                                date: widget.date,
                                time: widget.time,
                                event: widget.event,
                                description: widget.description,
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: const Size(360, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const SemiText(
                          text: "View Session",
                          color: Colors.white,
                          size: 16,
                          fontStyle: "Figtree",
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
