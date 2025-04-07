import 'package:bookly_app/features/home/presention/views/widgets/custom_book_detiles_appbar.dart';
import 'package:flutter/material.dart';

class BookDetilesViewBody extends StatelessWidget {
  const BookDetilesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [SafeArea(child: CustomBookDetilesAppBar())],
      ),
    );
  }
}
