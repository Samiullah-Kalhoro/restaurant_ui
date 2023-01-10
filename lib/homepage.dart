import 'package:flutter/material.dart';
import 'widgets/dishes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff252836),
        title: const Text(
          "Your Restaurant",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Choose Dishes",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: const BorderSide(color: Colors.white24),
                        )),
                        alignment: Alignment.center,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(vertical: 16, horizontal: 10)),
                        backgroundColor: const MaterialStatePropertyAll<Color>(
                            Color(0xff1f1d2b))),
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    label: const Text(
                      "Dine In",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Dishes()
          ],
        ),
      ),
    );
  }
}
