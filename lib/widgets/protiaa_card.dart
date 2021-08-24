import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProtiaaCard extends StatelessWidget {
  const ProtiaaCard({
    Key? key,
    required this.gradientColor1,
    required this.gradientColor2,
    required this.gradientColor3,
    required this.borderColor,
    required this.image,
    required this.numberText,
    required this.wordText,
    required this.textSpanText,
    required this.textSpanChildText,
    required this.textButtonText,
    required this.nameTextColor,
    required this.textSpanChildTextColor,
    required this.component,
    this.height,
    this.padding,
  }) : super(key: key);

  final Color gradientColor1,
      gradientColor2,
      gradientColor3,
      borderColor,
      nameTextColor,
      textSpanChildTextColor;
  final ImageProvider image;
  final String numberText,
      wordText,
      textSpanText,
      textSpanChildText,
      textButtonText;
  final double? height;
  final EdgeInsets? padding;
  final Widget component;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            blurRadius: 10.0,
            offset: Offset(0, 4),
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            gradientColor1,
            gradientColor2,
            gradientColor3,
          ],
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.0,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image(
                      fit: BoxFit.contain,
                      image: image,
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  height: 80,
                  width: 80,
                  child: Image(
                    fit: BoxFit.contain,
                    image: image,
                  ),
                ),
                Text(
                  numberText,
                  style: GoogleFonts.roboto(
                      fontSize: 110,
                      color: Colors.black.withOpacity(0.05),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              wordText,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: component,
            )
          ],
        ),
      ),
    );
  }
}
