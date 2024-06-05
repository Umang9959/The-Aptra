import 'package:flutter/material.dart';
import 'package:the_aptra/Custom/bold_text.dart';
import '../Custom/semi_b_text.dart';

class MbadgeScreen extends StatefulWidget {
  const MbadgeScreen({
    super.key,
  });

  @override
  State<MbadgeScreen> createState() => _MbadgeScreenState();
}

class _MbadgeScreenState extends State<MbadgeScreen> {
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
          text: "M-Badge",
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
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 50,
                bottom: 150,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/banner.png"),
                    const SizedBox(
                      height: 20,
                    ),
                    const BoldText(
                      text: "DEEPIKA SHARMA",
                      color: Colors.black,
                      size: 20,
                      fontStyle: "Figtree",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const SemiText(
                      text: "Shabiz",
                      color: Colors.black,
                      size: 16,
                      fontStyle: "Figtree",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/images/QR.png",
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const Divider(
                      thickness: 3,
                      color: Color(0xFFE41E1B),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const BoldText(
                      text: "DELEGATE",
                      color: Colors.black,
                      size: 30,
                      fontStyle: "Figtree",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
