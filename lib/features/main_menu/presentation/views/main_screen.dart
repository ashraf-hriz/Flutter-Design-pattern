import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/main_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MainCubit, MainState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is CategoriesLoaded){
            print('category ${state.categories.length}');
            print('category pate ${state.categories[0].title} ');
            for (var element in state.categories) {
              print('${element.title} ${element.patterns!.length}');
            }
          }
        },
        builder: (context, state) {
          if (state is CategoriesLoading){
            return const Center(child: CircularProgressIndicator());
          }

          return Container();
        },
      ),
    );
  }
}
