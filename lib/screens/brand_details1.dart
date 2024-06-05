import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_aptra/components/alert_dialogbox.dart';

import '../Custom/bold_text.dart';
import '../Custom/semi_b_text.dart';

class BrandDetailScreen extends StatefulWidget {
  BrandDetailScreen(
      {super.key, required this.image, required this.title, required this.bio});

  final String image;
  final String title;
  final String bio;

  @override
  State<BrandDetailScreen> createState() => _BrandDetailScreenState();
}

class _BrandDetailScreenState extends State<BrandDetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.black.withOpacity(0.9),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            SizedBox(
                              width: 10,
                            ),
                            Center(
                              child: BoldText(
                                  text: "Brand Editorial",
                                  color: Colors.white,
                                  size: 20,
                                  fontStyle: "Figtree"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                  });
                                },
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        CarouselSlider(
                          items: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/car1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/car2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
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
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            pauseAutoPlayOnTouch: true,
                            enlargeCenterPage: true,
                          ),
                        ),
                        Text("data"),
                      ],
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
