import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/src/provider.dart';
import 'package:space_x_app/pages/search_launches_page.dart';
import 'package:space_x_app/state/past_launches_state.dart';
import 'package:space_x_app/widgets/launch_item.dart';

class PastLaunchesPage extends StatefulWidget {
  const PastLaunchesPage({Key? key}) : super(key: key);

  @override
  State<PastLaunchesPage> createState() => _PastLaunchesPageState();
}

class _PastLaunchesPageState extends State<PastLaunchesPage> {
  //late Future<List<Launch>> data;
  late PastLaunchesState store;

  @override
  initState() {
    super.initState();
    //data = api.getData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store = Provider.of<PastLaunchesState>(context);
    if (!store.loaded && !store.loading) {
      store.getLaunches();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Stack(
            children: [
              Positioned(
                  bottom: 5,
                  child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Past Launches",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).primaryTextTheme.headline1,
                      ))),
              const Image(
                image: AssetImage('assets/images/rocket.jpg'),
                fit: BoxFit.cover,
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.transparent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, SearchLaunchesPages.route,
            arguments: store.launches),
        child: const Icon(Icons.search),
      ),
      body: Observer(
        builder: (context) {
          if (store.loaded) {
            return ListView.builder(
              itemCount: store.sortedLaunches.length,
              itemBuilder: (context, index) {
                return LaunchItem(
                  name: store.sortedLaunches[index].name,
                  date: store.sortedLaunches[index].static_fire_date_utc,
                );
              },
            );
          }
          if (store.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Center(
            child: Text("Sorry :("),
          );
        },
      ),
    );
  }
}
