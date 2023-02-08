import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealInfo extends StatelessWidget {
  const MealInfo({
    Key? key,
    required this.meal,
  }) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Column(children: [
              Text(
                meal.name,
                style: const TextStyle(color: Color(0xFF2e1326), fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                meal.price.toString(),
                style: const TextStyle(color: Color(0xFF2e1326), fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  const Icon(Icons.star, color: Colors.amber),
                  Text(meal.rate, style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 5),
                  Text('(${meal.reviews})', style: const TextStyle(color: Colors.orange)),
                ]),
              ),
            ]),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
              decoration: const BoxDecoration(
                border: Border.fromBorderSide(BorderSide(color: Colors.black12)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(children: const [
                  Icon(Icons.access_time_filled, size: 20, color: Colors.grey),
                  SizedBox(width: 5),
                  Text('Delivery Time', style: TextStyle(color: Colors.black54)),
                ]),
                const Text('30 mins', style: TextStyle(color: Color(0xFF2e1326))),
              ]),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: Text(
                meal.description,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                overflow: TextOverflow.visible,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
