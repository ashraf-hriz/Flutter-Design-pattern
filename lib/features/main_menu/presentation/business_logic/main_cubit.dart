
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/entities/category.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/repository/categories_repository.dart';


import '../../../../core/error/failures.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {

  final CategoriesRepo categoriesRepo;
  MainCubit({required this.categoriesRepo}) : super(MainInitial());

  static MainCubit get(context) => BlocProvider.of(context);

  getDesignPatternCategories() async{
    var failureOrCategories = await categoriesRepo.getCategories();
    emit(_mapFailureOrPostsState(failureOrCategories));
  }

  MainState _mapFailureOrPostsState(Either<Failure,List<Category>> either){
    return either.fold((failure) {
      return CategoriesError(message: _mapFailureToMessage(failure));
    }, (categories) {
      return CategoriesLoaded(categories: categories);
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'SERVER_FAILURE_MESSAGE';
      case OfflineFailure:
        return 'OFFLINE_FAILURE_MESSAGE';
      default:
        return "Unexpected Error , Please try again later .";
    }
  }
}
