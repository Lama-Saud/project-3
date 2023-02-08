import 'meal.dart';

class Order {
  final String restaurant;
  final String restaurantLogo;
  final String status;
  final String date;
  final String orderID;
  final double total;
  final List<Meal> meals;

  Order({
    required this.restaurant,
    required this.restaurantLogo,
    required this.status,
    required this.date,
    required this.orderID,
    required this.total,
    required this.meals,
  });
}
