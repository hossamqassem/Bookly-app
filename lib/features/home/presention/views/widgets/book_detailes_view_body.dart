import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presention/views/widgets/books_detailes_section.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_detiles_appbar.dart';
import 'package:bookly_app/features/home/presention/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetilesViewBody extends StatelessWidget {
  const BookDetilesViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SafeArea(
                  child: CustomBookDetilesAppBar(),
                ),
                const SizedBox(
                  height: 6,
                ),
                BookDetailesSection(
                  book: bookModel,
                ),
                const SizedBox(
                  height: 8,
                ),
                const SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
