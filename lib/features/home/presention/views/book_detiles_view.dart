import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presention/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetilesView extends StatefulWidget {
  const BookDetilesView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetilesView> createState() => _BookDetilesViewState();
}

class _BookDetilesViewState extends State<BookDetilesView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetilesViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
