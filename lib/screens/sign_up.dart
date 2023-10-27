import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../common/widgets/custom_textfield.dart';
import '../common/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

bool isTapped = true;
@override
void initState() {
  isTapped = true;
}

class _SignUpState extends State<SignUp> {
  String? branchValue;
  var branches = [
    'IT',
    'CSE',
    'Civil',
    'Mech',
    'Electrical',
    'E&I',
    'FT',
    'BT',
  ];

  String? batchValue;
  var batches = [
    '2023',
    '2024',
    '2025',
    '2026',
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/illustrations/image1.png'),
                    SizedBox(
                      height: mediaQuery.size.height * 0.156,
                    ),
                    Image.asset('assets/illustrations/image2.png')
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mediaQuery.size.height * 0.0778,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/icons/backbutton.png'),
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.0259,
                  ),
                  Text(
                    'One step away...',
                    style: GoogleFonts.spaceGrotesk(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      letterSpacing: 0.2,
                    )),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Sign up',
                    style: GoogleFonts.spaceGrotesk(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      letterSpacing: 0.2,
                    )),
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.0259,
                  ),
                  Row(
                    children: [
                      CustomTextfield(
                          hinttext: 'First name',
                          width: (mediaQuery.size.width - 64) * 0.5,
                          height: mediaQuery.size.height * 0.069),
                      const SizedBox(
                        width: 16,
                      ),
                      CustomTextfield(
                          hinttext: 'Last name',
                          width: (mediaQuery.size.width - 64) * 0.5,
                          height: mediaQuery.size.height * 0.069),
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.017,
                  ),
                  CustomTextfield(
                      hinttext: 'E-mail',
                      width: mediaQuery.size.width - 48,
                      height: mediaQuery.size.height * 0.069),
                  SizedBox(
                    height: mediaQuery.size.height * 0.017,
                  ),
                  //password
                  Container(
                    height: mediaQuery.size.height * 0.069,
                    width: mediaQuery.size.width - 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xff000000),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Stack(alignment: Alignment.centerRight, children: [
                        TextField(
                          obscureText: isTapped,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Password',
                              hintStyle: GoogleFonts.spaceGrotesk(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      color: Color(0xffAFAEAE)))),
                        ),
                        InkWell(
                          child: isTapped
                              ? Image.asset('assets/icons/eye-close-line.png')
                              : Image.asset('assets/icons/eye-line-open.png'),
                          onTap: () {
                            setState(() {
                              isTapped = !isTapped;
                            });
                          },
                        )
                      ]),
                    ),
                  ),

                  SizedBox(
                    height: mediaQuery.size.height * 0.017,
                  ),

                  //zairza id
                  CustomTextfield(
                      hinttext: 'Zairza ID',
                      width: mediaQuery.size.width - 48,
                      height: mediaQuery.size.height * 0.069),
                  SizedBox(
                    height: mediaQuery.size.height * 0.017,
                  ),

                  //branch and batch
                  Row(
                    children: [
                      //branch
                      Container(
                        height: mediaQuery.size.height * 0.069,
                        width: (mediaQuery.size.width - 64) * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 2,
                              color: const Color(0xff000000),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text(
                                'Branch',
                                style: GoogleFonts.spaceGrotesk(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.2,
                                        color: Color(0xffAFAEAE))),
                              ),
                              // Initial Value
                              value: branchValue,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: branches.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  branchValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: mediaQuery.size.height * 0.017,
                      ),

                      //batch
                      Container(
                        height: mediaQuery.size.height * 0.069,
                        width: (mediaQuery.size.width - 64) * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 2,
                              color: const Color(0xff000000),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text(
                                'Batch',
                                style: GoogleFonts.spaceGrotesk(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        letterSpacing: 0.2,
                                        color: Color(0xffAFAEAE))),
                              ),
                              // Initial Value
                              value: batchValue,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: batches.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  batchValue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //phone number
                  SizedBox(
                    height: mediaQuery.size.height * 0.017,
                  ),
                  CustomTextfield(
                    hinttext: 'Phone number',
                    width: mediaQuery.size.width - 48,
                    height: mediaQuery.size.height * 0.069,
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.034,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                        text: 'Sign up',
                        onTap: () {},
                        width: mediaQuery.size.width - 52,
                        icon: Image.asset('assets/icons/tick.png'),
                      ),
                      SizedBox(
                        height: mediaQuery.size.height * 0.017,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Have an account ? ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Sign in',
                              style: const TextStyle(
                                  color: Color(0xffFF8B2C),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
