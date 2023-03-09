
import 'package:equatable/equatable.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/entities/pattern.dart';

class Category extends Equatable{
  String? id;
  String? title;
  int? color;
  List<DPattern>? patterns;

  Category({this.id, this.title, this.color, this.patterns});

  @override
  // TODO: implement props
  List<Object?> get props => [id,title,color,patterns];
}