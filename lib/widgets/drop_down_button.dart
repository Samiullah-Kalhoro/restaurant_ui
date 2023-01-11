import 'package:flutter/material.dart';

class DropDownBtn extends StatefulWidget {
  const DropDownBtn({super.key});

  @override
  State<DropDownBtn> createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  List<String> items = ['Dine In', 'To GO', 'Delivery'];
  String? selectedItem = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        items: items
            .map((item) => DropdownMenuItem<String>(
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 24),
                  ),
                ))
            .toList(),
        onChanged: (item) => setState(() {
          selectedItem = item;
        }),
        value: selectedItem,
      ),
    );
  }
}
