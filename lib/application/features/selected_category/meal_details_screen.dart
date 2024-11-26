import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_up/application/core/utils/colors.dart';
import 'package:meal_up/application/core/widgets/custom_text.dart';
import 'package:meal_up/application/features/selected_category/bloc/selected_catecory_bloc.dart';
import 'package:meal_up/application/features/selected_category/widgets/category_session_widget.dart';
import 'package:meal_up/application/features/selected_category/widgets/image_widget.dart';
import 'package:meal_up/application/features/selected_category/widgets/instructions_widget.dart';
import 'package:meal_up/application/features/selected_category/widgets/link_widget.dart';

class MealDetailsScreen extends StatefulWidget {
  const MealDetailsScreen({super.key, required this.id});
  final String id;

  @override
  State<MealDetailsScreen> createState() => _MealDetailsScreenState();
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  @override
  void initState() {
    context
        .read<SelectedCatecoryBloc>()
        .add(GetMealDetailsEvent(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<SelectedCatecoryBloc, SelectedCatecoryState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        } else if (state is MealDetailsLoadedState) {
          return CustomScrollView(
            slivers: [
              ImageWidget(image: state.details.image, name: state.details.name),
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    CategoryAndAreaSessionWidget(
                      catogary: state.details.category,
                      area: state.details.area,
                    ),
                    const SizedBox(height: 16),
                    LinkWidget(
                      link: state.details.source, 
                    ),
                    const SizedBox(height: 16),
                    InstructionsWidget(
                      instruction: state.details.instructions,
                    ),
                  ]),
                ),
              ),
            ],
          );
        } else if (state is ErrorState) {
          return Center(
            child: CustomText(text: state.error),
          );
        } else {
          return Container();
        }
      },
    ));
  }
}
