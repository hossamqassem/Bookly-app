import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presention/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presention/views/book_detiles_view.dart';
import 'package:bookly_app/features/home/presention/views/home_views.dart';
import 'package:bookly_app/features/presention/views/splash_view.dart';
import 'package:bookly_app/features/search/presentions/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kBookDetilesView = '/bookDetilesView';
  static const String kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeViews();
        },
      ),
      GoRoute(
        path: kBookDetilesView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetilesView(
              bookModel: state.extra as BookModel,
            ),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
