class Food {
  final String name; //chese burger
  final String description; //a burger full of cheese
  final String imagePath; // lib/images/chese_burger.png
  final double price; //5.50
  final FoodCategory category; //burger
  List<Addon> availableAddons; //[extra cheese, sauce, extra patty ]
  Food(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.category,
      required this.availableAddons});
}

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

class Addon {
  final String name;
  double price;

  Addon({required this.name, required this.price});
}
