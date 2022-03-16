import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier{

  ThemeMode _themeMode=ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme(bool isDark){

    _themeMode =isDark? ThemeMode.dark:ThemeMode.light;
    notifyListeners();

  }

}



































/*
class change_theme extends StatefulWidget {
  const change_theme({Key? key}) : super(key: key);

  @override
  _change_themeState createState() => _change_themeState();
}

class _change_themeState extends State<change_theme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      appBar: AppBar(
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      ),
      body: ListView(
        children: [
          Row(
            children: [
              Text("fd"),
            ],
          )
        ],
      )

    );
  }
}
*/