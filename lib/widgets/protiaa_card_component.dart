import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProtiaaCardComponent extends StatelessWidget {
  const ProtiaaCardComponent({
    Key? key, required this.textColor, required this.textSpanText,required this.textSpanChildText,
  }) : super(key: key);

  final Color textColor;
  final String textSpanText;
  final String textSpanChildText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RichText(
            text: TextSpan(
              text: textSpanText,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: textSpanChildText,
                  style: GoogleFonts.roboto(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'add new',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
