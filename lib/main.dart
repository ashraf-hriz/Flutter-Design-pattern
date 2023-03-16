import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_design_pattern/core/routs/app_routs.dart';
import 'package:flutter_design_pattern/core/theme/app_theme.dart';
import 'package:flutter_design_pattern/features/main_menu/presentation/business_logic/main_cubit.dart';
import 'package:flutter_design_pattern/features/main_menu/presentation/views/main_screen.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<MainCubit>(),//..getDesignPatternCategories(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: AppRouter.navigatorKey,
        title: 'design pattern',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: const MainScreen(),
      ),
    );
  }
}
