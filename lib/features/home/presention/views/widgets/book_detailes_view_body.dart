import 'package:bookly_app/features/home/presention/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presention/views/widgets/books_detailes_section.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_detiles_appbar.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presention/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/presention/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetilesViewBody extends StatelessWidget {
  const BookDetilesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SafeArea(
                  child: CustomBookDetilesAppBar(),
                ),
                SizedBox(
                  height: 15,
                ),
                BookDetailesSection(),
                SizedBox(
                  height: 50,
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
