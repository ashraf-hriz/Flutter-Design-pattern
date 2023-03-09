
import 'package:dartz/dartz.dart';
import 'package:flutter_design_pattern/features/main_menu/data/data_source/remote_data_source.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/entities/category.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/repository/categories_repository.dart';

import '../../../../core/error/excetons.dart';
import '../../../../core/error/failures.dart';

class CategoriesRepoImp implements CategoriesRepo{

  final CategoryRemoteDataSource categoryRemoteDataSource;

  CategoriesRepoImp({required this.categoryRemoteDataSource});

  @override
  Future<Either<Failure, List<Category>>> getCategories() async{
    try{
      final categories = await categoryRemoteDataSource.getAllCategories();
      return Right(categories);
    }on ServerException {
      return Left(ServerFailure());
    }
  }

}