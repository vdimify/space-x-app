import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:space_x_app/pages/details_page.dart';
import 'package:space_x_app/state/vehicles_state.dart';
import 'package:space_x_app/widgets/error_message_container.dart';
import 'package:space_x_app/widgets/loadint_cotainer.dart';
import 'package:space_x_app/widgets/scrolling_app_bar.dart';
import 'package:space_x_app/widgets/settings_drawer.dart';

class VehiclesPage extends StatefulWidget {
  const VehiclesPage({Key? key}) : super(key: key);

  @override
  State<VehiclesPage> createState() => _VehiclesPageState();
}

class _VehiclesPageState extends State<VehiclesPage> {
  List<ReactionDisposer>? reactions;
  late VehiclesState store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SettingsDrawer(),
        body: Observer(
          builder: (context) {
            return CustomScrollView(
              slivers: [
                ScrollingAppBar(
                  title: "Vehicle",
                  imagePath: 'assets/images/rocket.jpg',
                ),
                store.loaded
                    ? SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/rocket-placeholder.png'),
                              backgroundColor: Colors.transparent,
                            ),
                            title: Text(store.sortedList[index].name),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(store.sortedList[index].firstFlightDate ==
                                        null
                                    ? 'unknown launch date'
                                    : DateFormat('yyyy-MM-dd - kk:mm').format(
                                        store.sortedList[index]
                                            .firstFlightDate!)),
                                //Text(store.sortedList[index].type.toString())
                              ],
                            ),
                            trailing: const Icon(Icons.navigate_next),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsPage(
                                        vehicle: store.sortedList[index]),
                                  ));
                            },
                          );
                        }, childCount: store.sortedList.length),
                      )
                    : const SliverToBoxAdapter(),
                store.loading
                    ? const LoadingContainer()
                    : const SliverToBoxAdapter(),
                (!store.loading && !store.loaded)
                    ? const ErrorMessageContainer()
                    : const SliverToBoxAdapter(),
              ],
            );
          },
        ));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store = Provider.of<VehiclesState>(context);
    reactions ??= <ReactionDisposer>[
      autorun((_) {
        if (!store.loaded && !store.loading) {
          store.getVehicles();
        }
      })
    ];
  }

  @override
  void dispose() {
    super.dispose();
    if (reactions != null) {
      for (final ReactionDisposer disposer in reactions!) {
        dispose();
      }
      reactions!.clear();
    }
  }
}
