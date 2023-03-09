import 'package:flutter_design_pattern/features/main_menu/data/models/pattern_model.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/entities/category.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/entities/pattern.dart';

class CategoryModel extends Category {
  CategoryModel({
    String? id,
    String? title,
    String? color,
    List<DPatternModel>? patterns,
  }) : super(
          id: id,
          title: title,
          color: color,
          patterns: patterns,
        );

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
    patterns = List<DPatternModel>.from(json['patterns'].map((e)=>DPatternModel.fromJson(e)));
    /*if (json['patterns'] != null) {
      patterns = <DPatternModel>[];
      json['patterns'].forEach((v) {
        patterns!.add( DPatternModel.fromJson(v));
      });
    }*/
  }

  /*Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['color'] = color;
    if (patterns != null) {
      data['patterns'] = patterns!.map((v) => v.toJson()).toList();
    }
    return data;
  }*/
}
