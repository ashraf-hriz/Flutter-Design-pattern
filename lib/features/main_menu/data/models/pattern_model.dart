import 'package:flutter_design_pattern/features/main_menu/domain/entities/pattern.dart';

class DPatternModel extends DPattern {
   DPatternModel({
    String? id,
    String? title,
    String? description,
    String? articleUrl,
  }) : super(
          id: id,
          title: title,
          description: description,
          articleUrl: articleUrl,
        );

   DPatternModel.fromJson(Map<String, dynamic> json) {
     id = json['id'];
     title = json['title'];
     description = json['description'];
     articleUrl = json['articleUrl'];
   }

   /*Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = <String, dynamic>{};
     data['id'] = id;
     data['title'] = title;
     data['description'] = description;
     data['articleUrl'] = articleUrl;
     return data;
   }*/
}
