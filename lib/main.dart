import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:space_x_app/api/get_company_info_service.dart';
import 'package:space_x_app/api/get_launch_by_id_service.dart';
import 'package:space_x_app/api/get_past_launches_service.dart';
import 'package:space_x_app/api/get_roadster_service.dart';
import 'package:space_x_app/api/get_rockets_service.dart';
import 'package:space_x_app/api/get_ships_service.dart';
import 'package:space_x_app/api/get_single_rocket.dart';
import 'package:space_x_app/api/get_upcoming_launches_service.dart';
import 'package:space_x_app/api/get_vehicle_service.dart';
import 'package:space_x_app/main_navigation.dart';
import 'package:space_x_app/pages/search_launches_page.dart';
import 'package:space_x_app/state/past_launches_state.dart';
import 'package:space_x_app/state/theme_state.dart';
import 'package:space_x_app/state/vehicles_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(Provider(
      create: (BuildContext context) => ThemeState(),
      child: SpaceXApp(preferences.getBool("isDarkTheme"))));
}

class SpaceXApp extends StatefulWidget {
  SpaceXApp(bool? bool, {Key? key, this.darkMode}) : super(key: key);

  bool? darkMode;

  @override
  State<SpaceXApp> createState() => _SpaceXAppState();
}

class _SpaceXAppState extends State<SpaceXApp> {
  @override
  Widget build(BuildContext context) {
    ThemeState themeState = Provider.of<ThemeState>(context);
    return MultiProvider(
      providers: [
        Provider<GetRocketsService>(create: (_) => GetRocketsService()),
        Provider<GetRoadsterService>(create: (_) => GetRoadsterService()),
        Provider<GetShipsService>(create: (_) => GetShipsService()),
        Provider<GetLaunchByIdService>(create: (_) => GetLaunchByIdService()),
        Provider<GetPastLaunchesService>(
            create: (_) => GetPastLaunchesService()),
        ProxyProvider4<GetRoadsterService, GetShipsService, GetRocketsService,
                GetLaunchByIdService, GetVehiclesService>(
            update: (_, roadsters, ships, rockets, launch, __) {
          return GetVehiclesService(
            roadsterService: roadsters,
            shipService: ships,
            rocketService: rockets,
            findLaunchByIdService: launch,
          );
        }),
        ProxyProvider<GetVehiclesService, VehiclesState>(
          update: (_, service, __) => VehiclesState(service: service),
        ),
        ProxyProvider<GetPastLaunchesService, PastLaunchesState>(
          update: (_, service, __) => PastLaunchesState(service: service),
        ),
        Provider<GetSingleRocketById>(create: (_) => GetSingleRocketById()),
        Provider<GetCompanyInfoService>(create: (_) => GetCompanyInfoService()),
        Provider<GetUpcomingLaunchesService>(
            create: (_) => GetUpcomingLaunchesService()),
      ],
      child: Observer(builder: (BuildContext context) {
        return MaterialApp(
          theme: themeState.themeData,
          /*  darkTheme: CustomTheme.darkTheme,
          themeMode: currentTheme.currentTheme,*/
          debugShowCheckedModeBanner: false,
          home: const MainNavigation(),
          routes: {
            SearchLaunchesPages.route: (context) => SearchLaunchesPages(),
          },
        );
      }),
    );
  }
}
