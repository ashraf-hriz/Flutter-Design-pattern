part of 'main_cubit.dart';


abstract class MainState {}

class MainInitial extends MainState {}

class CategoriesLoading extends MainState {}

class CategoriesLoaded extends MainState {
  final List<Category> categories;

  CategoriesLoaded({required this.categories});
}

class CategoriesError extends MainState {
  final String message;

  CategoriesError({required this.message});
}
