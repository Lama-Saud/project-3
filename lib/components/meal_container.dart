import 'package:flutter/material.dart';
import 'package:project3/models/meal.dart';

class MealContainer extends StatelessWidget {
  const MealContainer({
    Key? key,
    required this.meal,
    required this.press,
  }) : super(key: key);

  final Meal meal;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 236, 230, 230),
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
              ],
            ),
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: 90,
                  height: 90,
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(meal.image, fit: BoxFit.cover),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(meal.name, style: const TextStyle(color: Color(0xFF794C71), fontSize: 18)),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(Icons.star, color: Colors.amber),
                          Text(
                            meal.rate,
                            style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 5),
                          Text('(${meal.reviews})', style: const TextStyle(color: Colors.orange)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Text('Price: ', style: TextStyle(color: Color(0xFF2e1326))),
                        Text(meal.price.toString(), style: const TextStyle(color: Colors.black26)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Positioned(
            top: 20,
            right: 20,
            child: Icon(Icons.favorite_outline),
          ),
        ],
      ),
    );
  }
}
