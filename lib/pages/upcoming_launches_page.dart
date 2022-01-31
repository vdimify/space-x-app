import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:provider/src/provider.dart';
import 'package:space_x_app/pages/search_launches_page.dart';
import 'package:space_x_app/state/past_launches_state.dart';
import 'package:space_x_app/widgets/error_message_container.dart';
import 'package:space_x_app/widgets/loadint_cotainer.dart';
import 'package:space_x_app/widgets/scrolling_app_bar.dart';
import 'package:space_x_app/widgets/settings_drawer.dart';

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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, SearchLaunchesPages.route,
            arguments: store.launches),
        child: const Icon(Icons.search),
      ),
      drawer: const SettingsDrawer(),
      body: Observer(builder: (context) {
        return CustomScrollView(slivers: [
          ScrollingAppBar(
            title: "Upcoming launches",
            imagePath: 'assets/images/rocket.jpg',
          ),
          store.loaded
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return ListTile(
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
                      );
                    },
                    childCount: store.sortedLaunches.length - 1,
                  ),
                )
              : const SliverToBoxAdapter(),
          store.loading ? const LoadingContainer() : const SliverToBoxAdapter(),
          (!store.loading && !store.loaded)
              ? const ErrorMessageContainer()
              : const SliverToBoxAdapter(),
        ]);
      }),
    );
  }
}
