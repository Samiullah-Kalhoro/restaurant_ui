import 'package:flutter/material.dart';

class DishItem extends StatelessWidget {
  const DishItem({
    Key? key,
    required this.name,
    required this.price,
    required this.stock,
    required this.picture,
  }) : super(key: key);

  final String name;
  final String price;
  final int stock;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            margin: const EdgeInsets.all(16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xff1f1d2b),
              child: Container(
                height: 300,
                // width: MediaQuery.of(context).size.width * 0.4,
                width: 200,
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rs. $price',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '$stock Bowls Available',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.transparent,
          ),
          child: DecoratedBox(
            decoration: ShapeDecoration(
              shape: const CircleBorder(),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  picture,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
