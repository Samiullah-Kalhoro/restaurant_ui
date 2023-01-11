import 'package:flutter/material.dart';
import 'package:restaurant_ui/widgets/bottom_nav.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<bool> isHighlighted = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff252836),
          title: const Text(
            "Your Restaurant",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        bottomNavigationBar: const BottomNavBar(activeIndex: 1),
        drawer: Drawer(
          width: 60,
          backgroundColor: const Color(0xff1f1d2b),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/home.png')),
              IconButton(
                  onPressed: () {}, icon: Image.asset('assets/images/2d.png')),
              IconButton(
                  onPressed: () {}, icon: Image.asset('assets/images/3d.png')),
              IconButton(
                  onPressed: () {}, icon: Image.asset('assets/images/4d.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/settings.png')),
              IconButton(
                  onPressed: () {}, icon: Image.asset('assets/images/5d.png')),
            ],
          ),
        ),
      ),
    );
  }
}

// Center(
        // child: DropdownButton(
        //   dropdownColor: Colors.amber,
        //   focusColor: Color.fromARGB(242, 223, 218, 218),
        //   style: const TextStyle(color: Colors.white),
        //   items: const [
        //     DropdownMenuItem(
        //       value: 'Dine In',
        //       child: Text("Dine In"),
        //     ),
        //     DropdownMenuItem(
        //       value: 'To Go',
        //       child: Text("To Go"),
        //     ),
        //     DropdownMenuItem(
        //       value: 'Delivery',
        //       child: Text("Delivery"),
        //     ),
        //   ],
        //   onChanged: (value) {},
        // ),