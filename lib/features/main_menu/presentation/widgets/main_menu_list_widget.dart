
import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/core/constants/layout_constants.dart';
import 'package:flutter_design_pattern/core/extensions/list_extension.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/entities/category.dart';

import 'main_menu_card_widget.dart';

class MainMenuListWidget extends StatelessWidget {
  final List<Category> categories;
  const MainMenuListWidget({Key? key,required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardsIterable = categories.map<Widget>(
          (category) => MainMenuCard(category: category),
    );
    return Column(
      children: cardsIterable.toList().addBetween(const SizedBox(height: LayoutConstants.spaceL,)),
    );
  }
}
