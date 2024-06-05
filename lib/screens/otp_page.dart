import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:the_aptra/Components/login_form.dart';
import 'package:the_aptra/Custom/bold_text.dart';
import 'package:the_aptra/Screens/dashboard.dart';
import 'package:the_aptra/Screens/home.dart';
import 'package:the_aptra/Screens/login.dart';

import '../Components/otp_form.dart';
import '../Custom/semi_b_text.dart';
import '../Provider/timer_otp.dart';

class OtpPage extends StatefulWidget {
  OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/aptra.png",
                        width: 289,
                        height: 200,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 293,
                      width: 335,
                      padding: const EdgeInsets.all(20),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SemiText(
                              text:
                                  "Enter OTP sent to your WhatsApp Number 9828098280",
                              color: Color(0xFF333333),
                              size: 18,
                              fontStyle: "Figtree",
                          textAlign: TextAlign.center,),
                          SizedBox(
                            height: mediaQuery.size.height * 0.03,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: OTPFormField(),
                          ),

                          Consumer<ResendOTPModel>(
                            builder: (context, resendOTPModel, child) {
                              return TextButton(
                                onPressed: resendOTPModel.isResendButtonDisabled
                                    ? null
                                    : () {
                                        resendOTPModel.startTimer();
                                      },
                                child: resendOTPModel.isResendButtonDisabled
                                    ? Text(
                                        'Resend OTP in ${resendOTPModel.timer}s',
                                        style:
                                            const TextStyle(color: Colors.red),
                                      )
                                    : const Text("Resend OTP"),
                              );
                            },
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF333333),
                              foregroundColor: Colors.white,
                              fixedSize: const Size(266 , 55 ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Dashboard()));
                            },
                            child: const Text("Login"),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
