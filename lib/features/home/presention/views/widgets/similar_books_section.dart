import 'package:bookly_app/features/home/presention/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            )),
        SizedBox(height: 10),
        SimilarBooksListView(),
      ],
    );
  }
}
