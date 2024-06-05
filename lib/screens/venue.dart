import 'package:flutter/material.dart';
import 'package:the_aptra/custom/venue_list_builder.dart';
class Venue extends StatefulWidget {
  const Venue({super.key});

  @override
  State<Venue> createState() => _VenueState();
}

class _VenueState extends State<Venue> {
  final List<Map<String, dynamic>> _venues = [
    {
      'date': '19-21 March 2024',
      'image': 'assets/images/venue/loc1.png',
      'location': 'AEROCITY, NEW DELHI',
    },
    {
      'date': '19-21 March 2024',
      'image': 'assets/images/venue/loc1.png',
      'location': 'AEROCITY, NEW DELHI',
    },
    {
      'date': '19-21 March 2024',
      'image': 'assets/images/venue/loc1.png',
      'location': 'AEROCITY, NEW DELHI',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: CustomVenueList(
                  venues: _venues,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
