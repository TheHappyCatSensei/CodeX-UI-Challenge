import 'package:codex_ui_challenge/helpers/colors.dart';
import 'package:codex_ui_challenge/widgets/my_text_field.dart';
import 'package:codex_ui_challenge/widgets/protiaa_card.dart';
import 'package:codex_ui_challenge/widgets/protiaa_card_component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'protiaa',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Container(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/profile.jpg'),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.6),
                                blurRadius: 4.0,
                                offset: Offset(0, 6),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                MyTextField(),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(),
                      ),
                    );
                  },
                  child: ProtiaaCard(
                    height: 250,
                    gradientColor1: Color(0xFFFB7872),
                    gradientColor2: Color(0xFFD32A69),
                    gradientColor3: Color(0xFF991E61),
                    borderColor: Colors.white,
                    numberText: '#1',
                    textSpanText: '123',
                    textSpanChildText: '  shots',
                    textSpanChildTextColor: Color(0xFFE6518F),
                    wordText: 'dribbble',
                    textButtonText: 'add new',
                    nameTextColor: Color(0xFFFB7872),
                    image: AssetImage('images/ball.png'),
                    component: Column(
                      children: [
                        Text(
                          '@realvjy',
                          style: GoogleFonts.roboto(
                            color: Color(0xFFFB7872),
                          ),
                        ),
                        SizedBox(height: 8),
                        ProtiaaCardComponent(
                          textColor: Color(0xFFFB7872),
                          textSpanText: '123',
                          textSpanChildText: '  shots',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ProtiaaCard(
                  height: 250,
                  gradientColor1: Color(0xFF39D4FD),
                  gradientColor2: Color(0xFF1F72E7),
                  gradientColor3: Color(0xFF163FBC),
                  borderColor: Colors.white,
                  numberText: '#2',
                  textSpanText: '207',
                  textSpanChildText: '  posts',
                  textSpanChildTextColor: Colors.white,
                  wordText: 'behance',
                  textButtonText: 'add new',
                  nameTextColor: Colors.white,
                  image: AssetImage('images/behance.png'),
                  component: Column(
                    children: [
                      Text(
                        '@realvjy',
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      ProtiaaCardComponent(
                        textColor: Color(0xFFFFFFFF),
                        textSpanText: '207',
                        textSpanChildText: '  posts',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
