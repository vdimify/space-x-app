import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:provider/src/provider.dart';
import 'package:space_x_app/pages/search_launches_page.dart';
import 'package:space_x_app/state/past_launches_state.dart';
import 'package:space_x_app/widgets/error_message_container.dart';
import 'package:space_x_app/widgets/launch_item.dart';
import 'package:space_x_app/widgets/loadint_cotainer.dart';
import 'package:space_x_app/widgets/scrolling_app_bar.dart';
import 'package:space_x_app/widgets/settings_drawer.dart';

class PastLaunchesPage extends StatefulWidget {
  const PastLaunchesPage({Key? key}) : super(key: key);

  @override
  State<PastLaunchesPage> createState() => _PastLaunchesPageState();
}

class _PastLaunchesPageState extends State<PastLaunchesPage> {
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
      drawer: const SettingsDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, SearchLaunchesPages.route,
            arguments: store.launches),
        child: const Icon(Icons.search),
      ),
      body: Observer(
        builder: (context) {
          return CustomScrollView(slivers: [
            ScrollingAppBar(
              title: "Past launches",
              imagePath: 'assets/images/rocket.jpg',
            ),
            store.loaded
                ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return LaunchItem(
                          name: store.sortedLaunches[index].name,
                          date:
                              store.sortedLaunches[index].static_fire_date_utc,
                        );
                      },
                      childCount: store.sortedLaunches.length - 1,
                    ),
                  )
                : const SliverToBoxAdapter(),
            store.loading
                ? const LoadingContainer()
                : const SliverToBoxAdapter(),
            (!store.loading && !store.loaded)
                ? const ErrorMessageContainer()
                : const SliverToBoxAdapter(),
          ]);
        },
      ),
    );
  }
}
