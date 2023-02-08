import 'package:flutter/material.dart';

import '../models/restaurant.dart';

class RestaurantAppBar extends StatelessWidget {
  const RestaurantAppBar({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

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
      actions: [
        Container(
          decoration: const BoxDecoration(color: Colors.black45, shape: BoxShape.circle),
          width: 30,
          height: 30,
          child: const Icon(Icons.search, size: 15),
        ),
        const SizedBox(width: 5),
        Container(
          decoration: const BoxDecoration(color: Colors.black45, shape: BoxShape.circle),
          width: 30,
          height: 30,
          child: const Icon(Icons.share, size: 15),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(background: Image.asset(restaurant.bannerImage, fit: BoxFit.cover)),
      backgroundColor: Colors.transparent,
      expandedHeight: 200,
      leadingWidth: 40,
    );
  }
}
