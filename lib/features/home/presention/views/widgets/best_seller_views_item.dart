import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetilesView, extra: bookModel);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        bookModel.volumeInfo.title!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'your_font',
                          decoration: TextDecoration.none,
                        )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[200],
                          fontFamily: 'Poppins',
                          decoration: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      BookRating(
                        rating:
                            (bookModel.volumeInfo.averageRating ?? 0).toInt(),
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
