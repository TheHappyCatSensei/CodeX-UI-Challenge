
import 'package:codex_ui_challenge/helpers/colors.dart';
import 'package:codex_ui_challenge/helpers/list_items.dart';
import 'package:codex_ui_challenge/widgets/list_view_widget.dart';
import 'package:codex_ui_challenge/widgets/protiaa_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFB7872),
                Color(0xFFD32A69),
                Color(0xFF991E61),
              ],
            ),
          ),
          child: Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
      backgroundColor: bgColor,
      body: Column(
        children: [
          ProtiaaCard(
            padding: EdgeInsets.symmetric(vertical: 45),
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
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '123',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      '623k',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      '129k',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'shots',
                      style: GoogleFonts.roboto(
                        color: Color(0xFFFB7872),
                      ),
                    ),
                    Text(
                      'likes',
                      style: GoogleFonts.roboto(
                        color: Color(0xFFFB7872),
                      ),
                    ),
                    Text(
                      'fans',
                      style: GoogleFonts.roboto(
                        color: Color(0xFFFB7872),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: detailsItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListViewWidget(index: index);
                }),
          )
        ],
      ),
    );
  }
}
