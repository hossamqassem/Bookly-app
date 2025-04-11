import 'package:bookly_app/core/errors/failuers.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchNewsSetBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failuer, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
