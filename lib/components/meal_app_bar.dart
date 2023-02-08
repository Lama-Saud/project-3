import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealAppBar extends StatelessWidget {
  const MealAppBar({
    Key? key,
    required this.restaurantName,
    required this.meal,
  }) : super(key: key);

  final String restaurantName;
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(Icons.arrow_back, size: 15, color: Colors.white),
        ),
      ),
      title: Text(restaurantName),
      actions: [
        Container(
          decoration: const BoxDecoration(color: Colors.black45, shape: BoxShape.circle),
          width: 30,
          height: 30,
          child: const Icon(Icons.share, size: 15),
        ),
        const SizedBox(width: 5),
        Container(
          decoration: const BoxDecoration(color: Colors.black45, shape: BoxShape.circle),
          width: 30,
          height: 30,
          child: const Icon(Icons.favorite_border, size: 15),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(background: Image.asset(meal.image, fit: BoxFit.cover)),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      expandedHeight: 200,
      leadingWidth: 40,
    );
  }
}
