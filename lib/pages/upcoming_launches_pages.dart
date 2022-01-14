import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:provider/src/provider.dart';
import 'package:space_x_app/state/past_launches_state.dart';

class UpcomingLaunchesPage extends StatefulWidget {
  const UpcomingLaunchesPage({Key? key}) : super(key: key);

  @override
  State<UpcomingLaunchesPage> createState() => _UpcomingLaunchesPageState();
}

class _UpcomingLaunchesPageState extends State<UpcomingLaunchesPage> {
  late PastLaunchesState store;

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
    return Observer(builder: (context) {
      return CustomScrollView(slivers: [
        SliverAppBar(
          title: const Text("Upcoming Launches"),
          floating: true,
          backgroundColor: Colors.transparent,
          flexibleSpace: const Image(
            image: AssetImage('assets/images/rocket.jpg'),
            fit: BoxFit.cover,
          ),
          expandedHeight: 200,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        store.loaded
            ? SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    Column(children: [
                      ListTile(
                        leading: const Icon(Icons.airplanemode_active),
                        title: Text(store.sortedLaunches[index].name),
                        subtitle: Text(
                            store.sortedLaunches[index].static_fire_date_utc ==
                                    null
                                ? "Unknown"
                                : DateFormat('yyyy-MM-dd - kk:mm').format(store
                                    .sortedLaunches[index]
                                    .static_fire_date_utc!)),
                        trailing: Text(
                          "#${(store.sortedLaunches.length - index)}",
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        onTap: () {},
                      ),
                      const Divider(),
                    ]);
                  },
                  childCount: store.sortedLaunches.length,
                ),
              )
            : const SliverToBoxAdapter(),
        store.loading
            ? const SliverToBoxAdapter(
                child: Center(
                child: CircularProgressIndicator(),
              ))
            : const SliverToBoxAdapter(),
        (!store.loading && !store.loaded)
            ? const SliverToBoxAdapter(
                child: Center(
                child: Text("Sorry :("),
              ))
            : const SliverToBoxAdapter(),
      ]);
    });
  }
}
