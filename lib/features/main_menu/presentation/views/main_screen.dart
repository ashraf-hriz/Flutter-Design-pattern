import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_design_pattern/core/constants/layout_constants.dart';
import 'package:flutter_design_pattern/features/main_menu/domain/entities/category.dart';
import 'package:flutter_design_pattern/features/main_menu/presentation/widgets/main_header_widget.dart';
import 'package:flutter_design_pattern/features/main_menu/presentation/widgets/main_menu_list_widget.dart';

import '../business_logic/main_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /* var mainCubit = MainCubit.get(context);
    mainCubit.getDesignPatternCategories(); */
    MainCubit.get(context).getDesignPatternCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<MainCubit, MainState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is CategoriesLoaded) {
              print('category ${state.categories.length}');
              print('category pate ${state.categories[0].title} ');
              for (var element in state.categories) {
                print('${element.title} ${element.patterns!.length}');
              }
            }
          },
          builder: (context, state) {
            if (state is CategoriesLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CategoriesLoaded) {
              return _buildMainBodyWidget(state.categories);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  Widget _buildMainBodyWidget(List<Category> categories) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(LayoutConstants.paddingL),
      child: Column(
        children: [
          const MainHeaderWidget(),
          const SizedBox(
            height: LayoutConstants.spaceL,
          ),
          MainMenuListWidget(
            categories: categories,
          ),
        ],
      ),
    );
  }
}
