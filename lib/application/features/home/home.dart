import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
import 'package:get/get.dart';
import 'package:meal_up/application/features/home/bloc/meal_category_bloc.dart';
import 'package:meal_up/application/features/home/widgets/appbar_text_widget.dart';
import 'package:meal_up/application/features/home/widgets/catecory_text.dart';
import 'package:meal_up/application/features/home/widgets/categories_list.dart';
import 'package:meal_up/application/features/search/bloc/search_bloc.dart';
import 'package:meal_up/application/features/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<MealCategoryBloc>().add(GetMealCategoryEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppbarTextWidget(),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(
                    () => BlocProvider(
                          create: (context) => SearchBloc(),
                          child: const SearchScreen(),
                        ),
                    transition: Transition.downToUp);
              },
              icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CatecoryText(), CategoriesList()],
        ),
      ),
    );
  }
}
