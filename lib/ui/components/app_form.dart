import 'package:flutter/material.dart';

class AppForms {
  static Widget textField({
    String label = "TestInputField...",
    TextEditingController? controller,
  }) {
    return Container(
      // height: 40,
      margin: const EdgeInsets.only(top: 10, bottom: 0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          label: Text(label),
        ),
      ),
    );
  }

  static Widget datePickerField({
    void Function()? onTap,
    String hintText = "2024-06-05 (Testing Day)",
  }) {
    return Container(
      // height: 40,
      margin: const EdgeInsets.only(top: 20, bottom: 0),
      child: TextFormField(
        readOnly: true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          hintText: hintText,
          label: const Text("Date"),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        onTap: onTap ?? () {},
      ),
    );
  }

  static Widget timePickerField({
    String label = "Times",
    String hintText = '3:30 pm',
    void Function()? onTap,
  }) {
    return Container(
      // height: 40,
      margin: const EdgeInsets.only(top: 20, bottom: 0),
      child: TextFormField(
        readOnly: true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          hintText: hintText,
          label: Text(label),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        onTap: onTap ?? () {},
      ),
    );
  }

  static Widget selectDataField({
    String label = "TestDropDown",
    List<String> items = const ['One', 'Two', 'Three'],
  }) {
    return Container(
      // height: 40,
      margin: const EdgeInsets.only(top: 20),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          label: Text(label),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        value: items[0],
        onChanged: (String? value) {},
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            enabled: value.startsWith("_") ? false : true,
            value: value,
            child: Text(
              value,
              style: TextStyle(
                color: value.startsWith('_') ? Colors.grey[800] : Colors.grey,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
