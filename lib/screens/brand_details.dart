import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_aptra/components/alert_dialogbox.dart';
import 'package:the_aptra/screens/carousel_screen.dart';

import '../Custom/bold_text.dart';
import '../Custom/semi_b_text.dart';

class BrandDetailScreen extends StatelessWidget {
  const BrandDetailScreen(
      {super.key, required this.image, required this.title, required this.bio});

  final String image;
  final String title;
  final String bio;

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
          text: "Brand Details",
          color: Colors.black,
          size: 25,
          fontStyle: "Figtree",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/BrandBanner.png"),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 1,
                        spreadRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  height: 225,
                  width: 390,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
                side: const BorderSide(
                  color: Color(0xFFE63431),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(380, 36),
              ),
              onPressed: () {
                showFullScreenDialog(context);
              },
              child: const BoldText(
                text: "Editorial",
                color: Color(0xFFE63431),
                size: 15,
                fontStyle: "Figtree",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset(
                  image,
                  height: 70,
                  width: 80,
                ),
                const SizedBox(
                  width: 20,
                ),
                BoldText(
                  text: title,
                  color: Colors.black,
                  size: 18,
                  fontStyle: "Figtree",
                ), // Access the image here
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Flexible(
              child: SemiText(
                textAlign: TextAlign.left,
                text: bio,
                color: Colors.black,
                size: 12,
                fontStyle: "Figtree",
              ),
            ),
          ],
        ),
      ),
    );
  }
  void showFullScreenDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.zero,
          child: Container(
            color: Colors.transparent.withOpacity(0.9),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                // Add your dialog content here
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    CarouselSlider(
                      items: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/car1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/car2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/car3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.8,
                        initialPage: 0,
                        viewportFraction: 1.0,
                        aspectRatio: 1,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(
                            milliseconds: 800),
                        pauseAutoPlayOnTouch: true,
                        enlargeCenterPage: true,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

