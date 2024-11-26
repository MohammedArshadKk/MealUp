import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_up/application/features/home/bloc/meal_category_bloc.dart';
import 'package:meal_up/application/features/home/home.dart';
import 'package:meal_up/theme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: BlocProvider(
        create: (context) => MealCategoryBloc(),
        child: HomeScreen(),
      ),
    );
  }
}
