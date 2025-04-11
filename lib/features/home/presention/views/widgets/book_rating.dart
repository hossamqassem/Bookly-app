import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.center,
      required this.rating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar,
            color: Color(0XFFFFDD4F), size: 15),
        const SizedBox(
          width: 7,
        ),
        Text(
          rating.toString(),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: 'Poppins',
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Text('($count)',
            style: const TextStyle(
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
