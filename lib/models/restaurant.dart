import 'package:flutter/material.dart';
import 'package:online_order/models/food.dart';

class Restaurant extends ChangeNotifier {
  //list of food
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Bacon Blue Burger",
        description:
            "Juicy beef patty with blue cheese, bacon, and caramelized onions.",
        imagePath: "assets/images/burgers/bacon_blue_burger.jpg",
        price: 6.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99)
        ]),
    Food(
        name: "BBQ Deluxe Burger",
        description:
            "Beef patty with BBQ sauce, cheddar, and crispy onion rings.",
        imagePath: "assets/images/burgers/bbq_deluxe_burger.jpg",
        price: 7.49,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99)
        ]),
    Food(
        name: "Caramelized Onion Classic",
        description:
            "Beef patty with caramelized onions, Swiss cheese, and arugula.",
        imagePath: "assets/images/burgers/caramelized_onion_classic.jpg",
        price: 6.49,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99)
        ]),
    Food(
        name: "Classic Cheeseburger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato.",
        imagePath: "assets/images/burgers/classic_cheese_burger.jpg",
        price: 5.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99)
        ]),
    Food(
        name: "Gourmet Egg Benedict Burger",
        description:
            "Beef patty with poached egg, hollandaise sauce, and bacon.",
        imagePath: "assets/images/burgers/gourmet_egg_benedict_burger.jpg",
        price: 8.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99)
        ]),
    Food(
        name: "Hawaiian Luau Burger",
        description: "Beef patty with pineapple, ham, and teriyaki sauce.",
        imagePath: "assets/images/burgers/hawaiian_luau_burger.jpg",
        price: 7.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99)
        ]),
    Food(
        name: "Smoky Gouda Burger",
        description: "Beef patty with smoked Gouda, bacon, and BBQ sauce.",
        imagePath: "assets/images/burgers/smoky_goude_burger.jpg",
        price: 7.49,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 0.99)
        ]),
    //desserts
    Food(
        name: "Almond Joy",
        description: "Chocolate cake with almonds and coconut flakes.",
        imagePath: "assets/images/desserts/almond_joy.jpg",
        price: 3.99,
        category: FoodCategory.desserts,
        availableAddons: []),
    Food(
        name: "Chocolate Lava",
        description: "Warm chocolate cake with a gooey molten center.",
        imagePath: "assets/images/desserts/chocolate_lava.jpg",
        price: 4.99,
        category: FoodCategory.desserts,
        availableAddons: []),
    Food(
        name: "Churro Caramel Magic",
        description: "Churros with caramel sauce and a hint of cinnamon.",
        imagePath: "assets/images/desserts/churro_caramel_magic.jpg",
        price: 3.49,
        category: FoodCategory.desserts,
        availableAddons: []),
    Food(
        name: "Coconut Cloud",
        description: "Light and fluffy coconut mousse.",
        imagePath: "assets/images/desserts/coconut_cloud.jpg",
        price: 4.49,
        category: FoodCategory.desserts,
        availableAddons: []),
    Food(
        name: "Mocha Madness",
        description: "Rich mocha-flavored cake with coffee icing.",
        imagePath: "assets/images/desserts/mocha_maddnes.jpg",
        price: 4.99,
        category: FoodCategory.desserts,
        availableAddons: []),
    //drinks
    Food(
        name: "Cold Brew",
        description: "Smooth and refreshing cold brew coffee.",
        imagePath: "assets/images/drinks/cold_brew.jpg",
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: []),
    Food(
        name: "Ginger Fizz",
        description: "Refreshing ginger drink with a hint of lemon.",
        imagePath: "assets/images/drinks/ginger_fizz.jpg",
        price: 3.49,
        category: FoodCategory.drinks,
        availableAddons: []),
    Food(
        name: "Iced Tea",
        description: "Chilled iced tea with a slice of lemon.",
        imagePath: "assets/images/drinks/icetea.jpg",
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: []),
    Food(
        name: "Lemon Refresher",
        description: "Lemonade with a refreshing twist.",
        imagePath: "assets/images/drinks/lemon_refresher.jpg",
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: []),
    Food(
        name: "Orange Bliss",
        description: "Freshly squeezed orange juice.",
        imagePath: "assets/images/drinks/orange_bliss.jpg",
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: []),
    //salads
    Food(
        name: "Greek Island",
        description: "Greek salad with feta cheese, olives, and cucumbers.",
        imagePath: "assets/images/salads/greek_island.jpg",
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: []),
    Food(
        name: "Mediterranean Bliss",
        description: "Salad with mixed greens, cherry tomatoes, and hummus.",
        imagePath: "assets/images/salads/mediterranean_bliss.jpg",
        price: 6.49,
        category: FoodCategory.salads,
        availableAddons: []),
    Food(
        name: "Roasted Supreme",
        description: "Roasted vegetable salad with balsamic dressing.",
        imagePath: "assets/images/salads/roasted_supreme.jpg",
        price: 6.99,
        category: FoodCategory.salads,
        availableAddons: []),
    Food(
        name: "Spicy Thai",
        description: "Spicy Thai salad with peanut dressing.",
        imagePath: "assets/images/salads/spicy_thai.jpg",
        price: 5.49,
        category: FoodCategory.salads,
        availableAddons: []),
    //sides
    Food(
        name: "Egg",
        description: "Boiled egg with a pinch of salt.",
        imagePath: "assets/images/sides/egg.jpg",
        price: 1.49,
        category: FoodCategory.sides,
        availableAddons: []),
    Food(
        name: "Hummus",
        description: "Creamy hummus served with pita bread.",
        imagePath: "assets/images/sides/hummus.jpg",
        price: 2.99,
        category: FoodCategory.sides,
        availableAddons: []),
    Food(
        name: "Potato",
        description: "Crispy fried potato wedges.",
        imagePath: "assets/images/sides/patato.jpg",
        price: 2.49,
        category: FoodCategory.sides,
        availableAddons: []),
    Food(
      name: "Rice",
      description: "Fluffy white rice with egg and lemon, perfectly cooked.",
      imagePath: "assets/images/sides/rice.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [],
    )
  ];

//GETTERS

  List<Food> get menu => _menu;

//OPERATIONS

  //add to cart

  //remove from cart

  //get total price of cart

  //get total number of items in cart

  //clear cart

//HELPERS

  //generate a reciept

  //format double value into money

  //format list of addons into a string summary
}
