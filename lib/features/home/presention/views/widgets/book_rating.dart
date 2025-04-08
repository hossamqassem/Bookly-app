import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.center});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(FontAwesomeIcons.solidStar, color: Color(0XFFFFDD4F), size: 15),
        SizedBox(
          width: 7,
        ),
        Text(
          '4.8',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: 'Poppins',
            decoration: TextDecoration.none,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text('(2456)',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              fontFamily: 'Poppins',
              decoration: TextDecoration.none,
            )),
      ],
    );
  }
}
