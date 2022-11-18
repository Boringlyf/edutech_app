// model for all users basic information
class DriverModel {
  final String name;
  final String car;
  final String car_color;
  final String car_plate;
  final String location;
  final String destination;
  final double rating;
  final int seats;
  final int price;
  final String image;

  DriverModel({
    required this.name,
    required this.car,
    required this.car_color,
    required this.car_plate,
    required this.location,
    required this.destination,
    required this.rating,
    required this.seats,
    required this.price,
    required this.image,
  });
}