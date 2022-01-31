import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space_x_app/state/theme_state.dart';

class SettingsDrawer extends StatefulWidget {
  const SettingsDrawer({Key? key}) : super(key: key);

  @override
  State<SettingsDrawer> createState() => _SettingsDrawerState();
}

class _SettingsDrawerState extends State<SettingsDrawer> {
  @override
  Widget build(BuildContext context) {
    ThemeState state = Provider.of<ThemeState>(context);
    return Drawer(
      child: ListView(children: [
        SwitchListTile(
          title: Text("Dark Mode",
              style: TextStyle(
                  color: state.isDarkTheme ? Colors.black : Colors.white)),
          value: state.isDarkTheme,
          onChanged: (isDark) {
            setState(() {
              state.changeCurrentTheme(isDark);
            });
          },
        ),
      ]),
    );
  }
}
