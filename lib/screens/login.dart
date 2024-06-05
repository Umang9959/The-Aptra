import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:the_aptra/Provider/login_provider.dart';
import 'package:the_aptra/helper/loader.dart';

import '../Custom/semi_b_text.dart';
import '../components/login_form.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController logincontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LoginProvider>(
        builder: (context, provider, child) {
          return Stack(
            children: [
              Container(
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
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              height: 293,
                              width: 335,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                     Padding(
                                      padding: EdgeInsets.all(15),
                                      child: MyForm1(controller:logincontroller)
                                    ),
                                    ElevatedButton(
                                      onPressed: () {

                                        if(logincontroller.text.isNotEmpty){

                                          provider.login(logincontroller.text, context);

                                        }else{

                                          print("error${logincontroller.text}");
                                        }


                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF1A1712),
                                        foregroundColor: Colors.white,
                                        fixedSize: const Size(266, 55),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const Text("Next"),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          overlayColor:
                                              MaterialStateProperty.all(
                                                  Colors.transparent),
                                          child: const SemiText(
                                              text: "Privacy Policy",
                                              color: Color(0xFF064B6F),
                                              size: 16,
                                              fontStyle: "Figtree"),
                                        ),
                                        const SemiText(
                                            text: "|",
                                            color: Color(0xFF064B6F),
                                            size: 16,
                                            fontStyle: "Figtree"),
                                        InkWell(
                                          onTap: () {},
                                          overlayColor:
                                              MaterialStateProperty.all(
                                                  Colors.transparent),
                                          child: const SemiText(
                                              text: "Terms of Use",
                                              color: Color(0xFF064B6F),
                                              size: 16,
                                              fontStyle: "Figtree"),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                      child: const SemiText(
                                          text: "Cookie Policy",
                                          color: Color(0xFF064B6F),
                                          size: 16,
                                          fontStyle: "Figtree"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              provider.isloading ? Loader() : SizedBox(),
            ],
          );
        },
      ),
    );
  }
}
