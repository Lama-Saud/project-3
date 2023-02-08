import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project3/models/address.dart';
import 'package:project3/models/restaurant.dart';
import 'package:project3/pages/restaurant_page.dart';

import '../components/address_container.dart';
import '../components/restaurant_container.dart';
import '../models/app_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  Timer? _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage <= AppData.promoImages.length) {
        // Promo images num ---------------------------------------.
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // ---------------------------------------------.
          InkWell(
            onTap: () => showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return FractionallySizedBox(
                  heightFactor: 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView(
                      children: [
                        //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Choose delivery location',
                              style: TextStyle(
                                color: Color(0xFF794C71),
                                fontSize: 20,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                border: Border.fromBorderSide(BorderSide(color: Color(0xFF794C71))),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                              child: const Text(
                                'Edit',
                                style: TextStyle(
                                  color: Color(0xFF794C71),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        //
                        for (final address in Address.addresses) AddressContainer(address: address),
                      ],
                    ),
                  ),
                );
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              isScrollControlled: true,
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.delivery_dining_rounded, size: 30, color: Colors.orange),
                  Column(
                    children: [
                      const Text(
                        'Deliver to',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          Text('Work', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          Icon(Icons.keyboard_arrow_down_rounded, size: 15, color: Colors.orange),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ---------------------------------------------.
          // Search.
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(color: Colors.black12),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    color: Color(0xFF2e1326),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Search for Dishes, Restaurants and Reservations',
                    style: TextStyle(color: Colors.black26, fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
          // Page View.
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(),
            width: double.maxFinite,
            height: 150,
            child: PageView(
              reverse: true,
              controller: _pageController,
              children: [
                for (final image in AppData.promoImages)
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text('Try with us', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          // ListView(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   children: const [
          //     for( final category in )
          //   ],
          // ),

          // List of Restaurants.

          for (final restaurant in Restaurant.restaurants)
            RestaurantContainer(
              restaurant: restaurant,
              press: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => RestaurantPage(restaurant: restaurant))),
            ),
        ],
      ),
    );
  }
}
