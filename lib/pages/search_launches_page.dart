import 'package:flutter/material.dart';
import 'package:space_x_app/model/launch.dart';
import 'package:space_x_app/widgets/launch_item.dart';

class SearchLaunchesPages extends StatefulWidget {
  static const route = '/search';

  SearchLaunchesPages({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchLaunchesPages> createState() => _SearchLaunchesPagesState();
}

class _SearchLaunchesPagesState extends State<SearchLaunchesPages> {
  late List<Launch> launches = [];
  late List<Launch> filteredLaunches = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) => _filterResults(value),
                decoration: const InputDecoration(
                    labelText: 'Search launch', suffixIcon: Icon(Icons.search)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            filteredLaunches.isNotEmpty
                ? ListView.builder(
                    itemCount: filteredLaunches.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return LaunchItem(
                          name: filteredLaunches[index].name,
                          date: filteredLaunches[index].static_fire_date_utc);
                    },
                  )
                : const Text(
                    'No results to filter from',
                    style: TextStyle(fontSize: 24),
                  ),
          ],
        ),
      ),
    );
  }

  void _filterResults(String enteredKeyword) {
    if (enteredKeyword.isEmpty) {
      filteredLaunches = launches;
    } else {
      filteredLaunches = launches
          .where((launch) =>
              launch.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    launches = ModalRoute.of(context)!.settings.arguments as List<Launch>;
    filteredLaunches = launches;
  }
}