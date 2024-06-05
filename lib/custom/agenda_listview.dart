import 'package:flutter/material.dart';
import 'package:the_aptra/Custom/semi_b_text.dart';
import 'package:the_aptra/components/agendas.dart';
import 'package:the_aptra/screens/session_details.dart';

import 'bold_text.dart';

class CustomAgendaList extends StatelessWidget {
  final List<Map<String, dynamic>> agendas;

  const CustomAgendaList({super.key, required this.agendas});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: agendas.length,
      separatorBuilder: (BuildContext context, int index) {
        if (index < agendas.length - 1) {
          return const Divider(
            height: 1,
            color: Color(0xFFE5E5E5),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
      itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            width: 359.46,
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SemiText(
                      text: agendas[index]['time'],
                      color: const Color(0xFF333333),
                      size: 13,
                      fontStyle: "Figtree",
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 8,
                          color: agendas[index]['status'] == 'Live'
                              ? const Color(0xFFDE3C34)
                              : const Color(0xFF37A353),
                        ),
                        const SizedBox(width: 5),
                        BoldText(
                          text: agendas[index]['status'],
                          color: agendas[index]['status'] == 'Live'
                              ? const Color(0xFFDE3C34)
                              : const Color(0xFF37A353),
                          size: 13,
                          fontStyle: "Figtree",
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(
                      agendas[index]['image'],
                      height: 44,
                      width: 51,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BoldText(
                        text: agendas[index]['title'],
                        color: Colors.black,
                        size: 14,
                        fontStyle: "Figtree",
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(280, 36),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          side: const BorderSide(
                            color: Color(0xFFE41E1B),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SessionScreen(
                                time: agendas[index]['time'],
                                image: agendas[index]['image'],
                                title: agendas[index]['title'],
                                status: agendas[index]['status'],
                                des1: agendas[index]['des1'],
                                des2: agendas[index]['des2'],
                              ),
                            ),
                          );
                        },
                        child: const BoldText(
                          text: "Know More",
                          color: Color(0xFFE41E1B),
                          size: 14,
                          fontStyle: "Figtree",
                        ),
                      ),
                    ],
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
