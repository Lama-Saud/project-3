import 'package:flutter/material.dart';
import 'package:project3/models/meal.dart';

import '../components/meal_app_bar.dart';
import '../components/meal_info.dart';

class MealPage extends StatelessWidget {
  const MealPage({
    Key? key,
    required this.meal,
    required this.restaurantName,
  }) : super(key: key);

  final Meal meal;
  final String restaurantName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MealAppBar(restaurantName: restaurantName, meal: meal),
          MealInfo(meal: meal),
        ],
      ),
    );
  }
}
