import 'package:flutter/material.dart';
import 'package:the_aptra/Custom/semi_b_text.dart';
import 'package:the_aptra/screens/brand_details.dart';
import '../components/sponsors_home.dart';

class CustomSponsor extends StatelessWidget {
  final List<Map<String, dynamic>> sponsorslist;

  const CustomSponsor({super.key, required this.sponsorslist});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sponsorslist.length,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            overlayColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BrandDetailScreen(
                    image: sponsorslist[index]['image'],
                    title: sponsorslist[index]['title'],
                    bio: sponsorslist[index]['bio'],
                  ),
                ),
              );
            },
            child: Column(
              children: [
                Container(
                  height: 66,
                  width: 142,
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
                          sponsorslist[index]['image'],
                          height: 45.5,
                          width: 75.5,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SemiText(
                    text: sponsorslist[index]['sponsor'],
                    color: Colors.black,
                    size: 13,
                    fontStyle: "Figtree"),
              ],
            ),
          );
        },
      ),
    );
  }
}
