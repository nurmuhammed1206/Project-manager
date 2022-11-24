import 'package:flutter/material.dart';

import '../../pages/home_page.dart';
import '../categories/categories.dart';



class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key, required this.category, required this.index});

  final Category category;
  final int index;

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checked,
      onChanged: (value) {
        checked = value!;

        if (checked) {
          selectedCategories.add(widget.category);
        } else {
          selectedCategories.removeAt(widget.index);
        }

        setState(() {});
      },
    );
  }
}
