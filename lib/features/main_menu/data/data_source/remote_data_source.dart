import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_design_pattern/core/error/excetons.dart';
import 'package:flutter_design_pattern/core/error/failures.dart';
import 'package:flutter_design_pattern/features/main_menu/data/models/category_model.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../../../core/constants/assets_constants.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> getAllCategories();
}

class CategoriesRemoteDataImp implements CategoryRemoteDataSource {
  @override
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final menuJson = await rootBundle.loadString(
        AssetConstants.designPatternsJsonPath,
      );
      final designPatternCategoryJsonList = json.decode(menuJson) as List;
      debugPrint('data $designPatternCategoryJsonList');
      final mainMenuSections = designPatternCategoryJsonList
          .map(
            (categoryJson) => CategoryModel.fromJson(
              categoryJson as Map<String, dynamic>,
            ),
          )
          .toList();

      return mainMenuSections;
    } catch (e) {
      debugPrint('category error ${e.toString()}');
      throw ServerException();
    }
  }
}
