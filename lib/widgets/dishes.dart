import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/dishes_provider.dart';
import 'dish_item.dart';

class Dishes extends StatelessWidget {
  const Dishes({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DishesProvider>(
      create: (_) => DishesProvider(),
      child: Consumer<DishesProvider>(
        builder: (context, value, child) => SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          width: double.infinity,
          child: GridView.builder(
            itemCount: value.dishes.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 3.5,
            ),
            itemBuilder: (context, index) {
              return DishItem(
                name: value.dishes[index].name,
                price: value.dishes[index].price,
                stock: value.dishes[index].stock,
                picture: value.dishes[index].picture,
              );
            },
          ),
        ),
      ),
    );
  }
}
