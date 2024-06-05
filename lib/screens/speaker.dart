import 'package:flutter/material.dart';
import '../components/speakers.dart';

import '../components/seacrh_bar.dart';
import '../custom/speaker_custom_grid.dart';

class Speaker extends StatefulWidget {
  const Speaker({super.key});

  @override
  State<Speaker> createState() => _SpeakerState();
}

class _SpeakerState extends State<Speaker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
        child: Column(
          children: [
            const CustomSearchBar(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return SpeakerGridItem(
                    name: items[index]['name']!,
                    image: items[index]['image']!,
                    post: items[index]['post']!,
                    office: items[index]['office']!,
                    bio: items[index]['bio']!,
                    date: items[index]['date']!,
                    time: items[index]['time']!,
                    event: items[index]['event']!,
                    description: items[index]['description']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
