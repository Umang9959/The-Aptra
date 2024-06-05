import 'package:flutter/material.dart';
import 'package:the_aptra/custom/agenda_listview.dart';

import '../components/agendas.dart'; // Import the file with the _agendas list

class Agenda extends StatefulWidget {
  const Agenda({super.key});

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFDCE2E6),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: CustomAgendaList(
                    agendas: agendas, // Access the _agendas list
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}