import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zairza_app/common/widgets/custom_button.dart';

import '../common/widgets/custom_textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: MediaQuery.of(context).size.width * 0.2,
                  bottom: MediaQuery.of(context).size.width * 0.2,
                  right: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assets/signin_1.png'),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/signin_2.png'),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0778,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/backbutton.png'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0259,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Welcome\n',
                        style: GoogleFonts.spaceGrotesk(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 40,
                                letterSpacing: 0.2,
                                color: Colors.black)),
                      ),
                      TextSpan(
                        text: 'back ',
                        style: GoogleFonts.spaceGrotesk(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 40,
                                letterSpacing: 0.2,
                                color: Colors.black)),
                      ),
                      TextSpan(
                        text: 'Zairites',
                        style: GoogleFonts.spaceGrotesk(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 40,
                            letterSpacing: 0.2,
                            color: Color(0xffffc700),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: '!!',
                        style: GoogleFonts.spaceGrotesk(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 40,
                                letterSpacing: 0.2,
                                color: Colors.black)),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Sign In',
                      style: GoogleFonts.spaceGrotesk(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              letterSpacing: 0.2,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0259,
                  ),
                  Column(
                    children: [
                      CustomTextfield(
                          hinttext: 'Zairza ID / E-mail',
                          width: MediaQuery.of(context).size.width - 64 * 0.5,
                          height: MediaQuery.of(context).size.height * 0.069),
                      const SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.017,
                      ),
                      CustomTextfield(
                          hinttext: 'Password',
                          width: MediaQuery.of(context).size.width - 64 * 0.5,
                          height: MediaQuery.of(context).size.height * 0.069),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.017,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: RichText(
                      textAlign: TextAlign.right,
                      text: TextSpan(
                        recognizer: TapGestureRecognizer(),
                        text: 'Forgot Passowrd?',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xffFF8B2C),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Column(
                    children: [
                      CustomButton(
                        text: 'Sign In',
                        onTap: () {},
                        width: MediaQuery.of(context).size.width - 52,
                        icon: Image.asset('assets/arrow-right-line.png'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      Center(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Already have an account?',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  color: Color(0xffFF8B2C),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
