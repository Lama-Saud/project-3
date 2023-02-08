import 'package:flutter/material.dart';
import 'package:project3/models/restaurant.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {},
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.all(
                              //   Radius.circular(10),
                              // ),
                            ),
                            width: 90,
                            height: 90,
                            clipBehavior: Clip.hardEdge,
                            child: Image.asset(Restaurant.restaurants.first.logo, fit: BoxFit.cover),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Restaurant.restaurants.first.name,
                                  style: const TextStyle(color: Color(0xFF794C71), fontSize: 18)),
                              const SizedBox(height: 5),
                              const Text('Delivered',
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                              const Text('08 Feb 2023 12:58 AM'),
                              Row(
                                children: [
                                  const Text('Order Number: '),
                                  const Text(
                                    '79416407',
                                    style: TextStyle(color: Color(0xFF794C71)),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.payments_rounded,
                                        color: Colors.grey[350],
                                      ),
                                      const Text(
                                        '81.00 SR',
                                        style: TextStyle(color: Color(0xFF794C71)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Pay Now',
                            style: TextStyle(color: Colors.black12, fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Rate',
                            style: TextStyle(color: Colors.black12, fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Reorder',
                            style: TextStyle(color: Color(0xFF794C71), fontSize: 18, fontWeight: FontWeight.w500),
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
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: Row(children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration:
                BoxDecoration(color: Colors.green[700], borderRadius: const BorderRadius.all(Radius.circular(20))),
            width: 150,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('contact us'.toUpperCase(), style: const TextStyle(color: Colors.white)),
              const Icon(Icons.headset_mic_rounded, size: 35, color: Colors.white),
            ]),
          ),
        ]),
      ),
    );
  }
}
