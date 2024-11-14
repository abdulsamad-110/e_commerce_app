import 'package:flutter/material.dart';

class MyDropdown extends StatelessWidget {
  // List of dropdown items
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  final ValueNotifier<String?> selectedItem = ValueNotifier<String?>(null);

  MyDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black54),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ValueListenableBuilder<String?>(
        valueListenable: selectedItem,
        builder: (context, value, child) {
          return DropdownButtonFormField<String>(
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(bottom: 16)),
            dropdownColor: Colors.white,
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black54,
            ),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            value: value,
            hint: const Center(
              child: Text(
                'Sort',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              selectedItem.value = newValue;
              print('Selected Item: $newValue');
            },
          );
        },
      ),
    );
  }
}
