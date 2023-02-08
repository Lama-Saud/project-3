import 'package:flutter/material.dart';
import 'package:project3/models/restaurant.dart';
import 'package:project3/pages/meal_page.dart';

import '../components/meal_container.dart';
import '../components/restaurant_app_bar.dart';
import '../components/restaurant_info.dart';

class RestaurantPage extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantPage({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          RestaurantAppBar(restaurant: restaurant),
          RestaurantInfo(
            restaurant: restaurant,
          ),
          const SliverToBoxAdapter(
            child: Divider(
              indent: 18,
              endIndent: 18,
              color: Colors.grey,
            ),
          ),
          SliverToBoxAdapter(
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                for (final meal in restaurant.meals)
                  MealContainer(
                    meal: meal,
                    press: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MealPage(meal: meal, restaurantName: restaurant.name),
                    )),
                  ),
              ],
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
