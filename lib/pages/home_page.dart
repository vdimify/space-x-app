import "package:flutter/material.dart";
import "package:flutter_swiper/flutter_swiper.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            padding: const EdgeInsets.all(10),
            color: Colors.red,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Center(child: Text(index.toString()));
              },
              itemCount: 3,
              pagination: const SwiperPagination(),
              control: const SwiperControl(),
            ),
          ),
        ],
      ),
    );
  }
}
