import 'package:flutter/material.dart';

class ScrollingAppBar extends StatelessWidget {
  ScrollingAppBar({
    required this.title,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  String title;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        background: Image(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      expandedHeight: 200,
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }
}
