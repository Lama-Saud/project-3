import 'package:flutter/material.dart';

class RestaurantContainer extends StatelessWidget {
  final restaurant;
  final Function() press;

  const RestaurantContainer({
    required this.restaurant,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          decoration: const BoxDecoration(
            border: Border.fromBorderSide(
              BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(restaurant.bannerImage, width: 400, height: 150, fit: BoxFit.cover),
                  const Positioned(
                    top: 5,
                    right: 5,
                    child: Icon(Icons.favorite_border, size: 30, color: Colors.white70),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        restaurant.logo,
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(width: 10),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          restaurant.name,
                          style: const TextStyle(color: Color(0xFF2e1326), fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.location_pin, size: 20),
                                Text(restaurant.distance),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star, size: 20, color: Colors.amber),
                                Text(restaurant.rate),
                                Text(
                                  restaurant.reviews,
                                  style: const TextStyle(color: Colors.orange),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          restaurant.category,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
