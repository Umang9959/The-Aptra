import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyForm1 extends StatelessWidget {
  TextEditingController controller;

  MyForm1({required this.controller, Key? key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        style: GoogleFonts.getFont("Figtree",
            fontSize: 40, fontWeight: FontWeight.w300),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
        ],
        decoration: InputDecoration(
          hintText: 'Mobile Number',
          hintStyle:
              TextStyle(fontSize: 40, color: Colors.grey.withOpacity(0.5)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.pinkAccent.withOpacity(0.2), width: 4)),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 4),
          ),
        ));
  }
}
