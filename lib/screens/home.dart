import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_aptra/Custom/bold_text.dart';
import 'package:the_aptra/Custom/normal_text.dart';
import 'package:the_aptra/custom/sponsor_listview.dart';
import 'package:the_aptra/screens/sponsors.dart';
import '../components/sponsors_home.dart';
import '../custom/list_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> _items = [
    {
      'title': 'Agenda',
      'image': 'assets/images/my_favourites_footer.svg',
    },
    {
      'title': 'Venue',
      'image': 'assets/images/my_meeting_footer.svg',
    },
    {
      'title': 'About Us',
      'image': 'assets/images/about_us.svg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 234,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/banner.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            height: 56,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset("assets/images/date.svg"),
                                const SizedBox(
                                  width: 10,
                                ),
                                const BoldText(
                                    text: "19th-21st March, 2024",
                                    color: Colors.white,
                                    size: 14,
                                    fontStyle: "Figtree"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CustomListViewBuilder(items: _items),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BoldText(
                      text: "Sponsors",
                      color: Colors.black,
                      size: 14,
                      fontStyle: "Figtree"),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SponsorsScreen(),
                        ),
                      );
                    },
                    child: const BoldText(
                      text: "View All",
                      color: Colors.red,
                      size: 14,
                      fontStyle: "Figtree",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomSponsor(sponsorslist: sponsorslist),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(
                        0xFFFEF3F3,
                      ),
                    ),
                    onPressed: () {},
                    child: const BoldText(
                        text: "Quick Links",
                        color: Colors.black,
                        size: 12,
                        fontStyle: "Figtree"),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle, size: 10, color: Colors.black),
                      // bullet point
                      SizedBox(width: 5),
                      // spacing between bullet point and text
                      NormalText(
                        text: "Privacy Policy",
                        color: Colors.black,
                        size: 12,
                        fontStyle: "Figtree",
                      ),
                      // text
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle, size: 10, color: Colors.black),
                      // bullet point
                      SizedBox(width: 5),
                      // spacing between bullet point and text
                      NormalText(
                        text: "Terms of Use",
                        color: Colors.black,
                        size: 12,
                        fontStyle: "Figtree",
                      ),
                      // text
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle, size: 10, color: Colors.black),
                      // bullet point
                      SizedBox(width: 5),
                      // spacing between bullet point and text
                      NormalText(
                        text: "Cookie Policy",
                        color: Colors.black,
                        size: 12,
                        fontStyle: "Figtree",
                      ),
                      // text
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle, size: 10, color: Colors.black),
                    // bullet point
                    SizedBox(width: 5),
                    // spacing between bullet point and text
                    NormalText(
                      text: "Visitor Terms & Conditions",
                      color: Colors.black,
                      size: 12,
                      fontStyle: "Figtree",
                    ),
                    // text
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
