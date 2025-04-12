import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailesSection extends StatelessWidget {
  const BookDetailesSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            fontFamily: 'serif',
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          book.volumeInfo.authors![0],
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'sans-serif',
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 18),
        BookRating(
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        BookAction(bookModel: book),
      ],
    );
  }
}
