import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/list_items.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Container(
        height: 80,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 60,
                width: 80,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    detailsItems[index].imageUrl!,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detailsItems[index].title!,
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFACAFBA),
                    ),
                  ),
                  Text(
                    detailsItems[index].date!,
                    style: GoogleFonts.nunito(
                      color: Color(0xFF787E8E),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              detailsItems[index].performance!,
              style: GoogleFonts.nunito(
                color: Color(0xFF535B6F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
