// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:switcher_button/switcher_button.dart';
//import 'main.dart';

//void setDarkModeSetting(BuildContext context, ThemeMode themeMode) =>
//    MyApp.of(context).setThemeMode(themeMode);

class SwitchMinimal extends StatefulWidget {
  const SwitchMinimal({
    Key key,
    this.width,
    this.height,
    this.size,
    this.onColor,
    this.offColor,
  }) : super(key: key);

  final double width;
  final double height;
  final double size;
  final Color onColor;
  final Color offColor;

  @override
  _SwitchMinimalState createState() => _SwitchMinimalState();
}

class _SwitchMinimalState extends State<SwitchMinimal> {
  @override
  Widget build(BuildContext context) {
    return SwitcherButton(
      size: widget.size,
      value: Theme.of(context).brightness == Brightness.dark,
      onColor: widget.onColor,
      offColor: widget.offColor,
      onChange: (value) async {
       if (Theme.of(context).brightness == Brightness.dark) {
         setDarkModeSetting(context, ThemeMode.light);
       } else {
         setDarkModeSetting(context, ThemeMode.dark);
       }
      },
    );
  }
}
