import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBoodBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.fetchNewsSetBooks();
    result.fold((failuer) {
      emit(NewestBooksFailure(errorMessage: failuer.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
