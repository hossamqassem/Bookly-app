import 'package:bookly_app/features/home/presention/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailesSection extends StatelessWidget {
  const BookDetailesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomBookImage(
            imageUrl:
                'https://i.pinimg.com/736x/aa/94/e2/aa94e21b2d8eb073aae96c8588cd1002.jpg',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text('The Jungle Book',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              fontFamily: 'serif',
            )),
        const SizedBox(
          height: 5,
        ),
        const Text('Rudyard Kipling',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'sans-serif',
              color: Colors.grey,
            )),
        const SizedBox(height: 18),
        const BookRating(
          rating: 5,
          count: 100,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const BookAction(),
      ],
    );
  }
}
