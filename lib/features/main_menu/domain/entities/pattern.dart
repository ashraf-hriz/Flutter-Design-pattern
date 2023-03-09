

import 'package:equatable/equatable.dart';

class DPattern extends Equatable{
  String? id;
  String? title;
  String? description;
  String? articleUrl;

  DPattern({this.id, this.title, this.description, this.articleUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [id,title,description,articleUrl];

}