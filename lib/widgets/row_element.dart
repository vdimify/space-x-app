import 'package:flutter/material.dart';

class RowElement extends StatelessWidget {
  const RowElement({
    Key? key,
    required this.name,
    this.value,
  }) : super(key: key);

  final String name;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(name),
        Text(value == null ? '' : value!),
      ]),
    );
  }
}
