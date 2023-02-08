import 'meal.dart';

class Restaurant {
  final String name;
  final String distance;
  final String category;
  final String reviews;
  final String logo;
  final String bannerImage;
  final String rate;
  final String workingTime;
  final List<Meal> meals;

  static final List<Restaurant> restaurants = [
    //
    Restaurant(
      name: 'Callen Haze',
      distance: '11.20 km',
      category: 'Burger',
      reviews: '1012',
      logo: 'lib/assets/logo1.png',
      bannerImage: 'lib/assets/banner1.png',
      rate: '4.5',
      workingTime: 'Closes 11:59 PM',
      meals: [
        Meal(
          name: 'Clasic CH Burger',
          price: 32.0,
          rate: '4.2',
          reviews: '571',
          description: 'Bun, lettuce, punch, Maple Sauce, sweet pickles, crispy chicken\n\n650 Cal',
          image: 'lib/assets/meal11.png',
        ),
        Meal(
          name: 'Callen Fries',
          price: 13.0,
          rate: '4.1',
          reviews: '424',
          description: '300 Cal',
          image: 'lib/assets/meal12.png',
        ),
        Meal(
          name: 'Loaded Mix',
          price: 25.0,
          rate: '4.0',
          reviews: '232',
          description: 'Chicken bites, fries, baffalo sauce, punsh sauce, ranch sauce\n\n550 Cal',
          image: 'lib/assets/meal13.png',
        ),
      ],
    ),
    //
    Restaurant(
      name: 'Shiro',
      distance: '7.00 km',
      category: 'Asian',
      reviews: '723',
      logo: 'lib/assets/logo2.png',
      bannerImage: 'lib/assets/banner2.png',
      rate: '4.5',
      workingTime: 'Closes 11:59 PM',
      meals: [
        Meal(
          name: 'SHIRO Special California',
          price: 36.0,
          rate: '4.2',
          reviews: '241',
          description: 'Shrimp, king crab, tobico, cheese',
          image: 'lib/assets/meal21.png',
        ),
        Meal(
          name: 'Crunchy Crab Roll',
          price: 36.0,
          rate: '4.4',
          reviews: '179',
          description: 'Shrimp tempura, crab mayo spicy, avocado',
          image: 'lib/assets/meal22.png',
        ),
        Meal(
          name: 'Crazy Crunchy Fry',
          price: 36.0,
          rate: '4.3',
          reviews: '162',
          description: 'Shrimp tempura mixed with dynamic sauce',
          image: 'lib/assets/meal23.png',
        ),
      ],
    ),
  ];

  Restaurant({
    required this.name,
    required this.distance,
    required this.category,
    required this.reviews,
    required this.logo,
    required this.bannerImage,
    required this.rate,
    required this.workingTime,
    required this.meals,
  });
}
