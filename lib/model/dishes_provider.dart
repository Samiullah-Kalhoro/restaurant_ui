import 'package:flutter/foundation.dart';
import 'package:restaurant_ui/model/dishes_model.dart';

class DishesProvider with ChangeNotifier {
  List<DishesModel> dishess = {
    DishesModel(
      id: "1",
      name: "Spicy Sea Food Noodles",
      price: "800",
      stock: 20,
      picture: "assets/images/1.png",
    ),
    DishesModel(
      id: "2",
      name: "Mushroom Pasta with Parmesan",
      price: "800",
      stock: 11,
      picture: "assets/images/2.png",
    ),
    DishesModel(
      id: "3",
      name: "Beef Dumping Sweet and Sour Soup",
      price: "1200",
      stock: 16,
      picture: "assets/images/3.png",
    ),
    DishesModel(
      id: "4",
      name: "Simple Fried Rice with Omelette",
      price: "500",
      stock: 22,
      picture: "assets/images/4.png",
    ),
    DishesModel(
      id: "5",
      name: "Spicy Fried Rice with Omelette",
      price: "500",
      stock: 13,
      picture: "assets/images/5.png",
    ),
    DishesModel(
      id: "6",
      name: "Spicy Noodles with Poached Egg",
      price: "400",
      stock: 17,
      picture: "assets/images/6.png",
    ),
  }.toList();

  List<DishesModel> get _dishData => dishess;
  void addDish(DishesModel dishesModel) {
    _dishData.add(dishesModel);
    notifyListeners();
  }

  List<DishesModel> get dishes {
    return _dishData;
  }
}
