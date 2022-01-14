import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:space_x_app/pages/details_page.dart';
import 'package:space_x_app/state/vehicles_state.dart';

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
    //final RocketService service = context.read<RocketService>();

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: AppBar(
            flexibleSpace: const Image(
              image: AssetImage('assets/images/rocket.jpg'),
              fit: BoxFit.cover,
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
        body: Observer(
          builder: (context) {
            if (store.loaded) {
              return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/rocket-placeholder.png'),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(store.sortedList[index].name),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(store.sortedList[index].firstFlightDate == null
                              ? 'unknown launch date'
                              : DateFormat('yyyy-MM-dd - kk:mm').format(
                                  store.sortedList[index].firstFlightDate!)),
                          Text(store.sortedList[index].type.toString())
                        ],
                      ),
                      trailing: const Icon(Icons.navigate_next),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailsPage(vehicle: store.sortedList[index]),
                            ));
                      },
                    );
                  },
                  itemCount: store.sortedList.length);
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
        ));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store = Provider.of<VehiclesState>(context);

    //TODO check do you need this
    reactions ??= <ReactionDisposer>[
      autorun((_) {
        if (!store.loaded && !store.loading) {
          store.getVehicles();
        }
      })
    ];
  }

/*  @override
  void dispose() {
    super.dispose();
    if(reactions != null) {
      for(final ReactionDisposer disposer in reactions!) {
        dispose();
      }
      reactions!.clear();
    }
  }*/
}
