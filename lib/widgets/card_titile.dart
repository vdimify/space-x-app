import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  CardTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
