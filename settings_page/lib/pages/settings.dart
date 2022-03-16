// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_page/pages/about_us.dart';
import 'package:settings_page/pages/edit_profile.dart';
import 'package:settings_page/theme/theme_change.dart';
import 'package:settings_page/theme/theme.dart';
import 'package:settings_page/main.dart';
// import 'package:split_it/settings_page/pages/about_us.dart';
// impo


class Settingspage extends StatefulWidget {
  // const Settingspage({Key? key}) : super(key: key);

  @override
  _SettingspageState createState() => _SettingspageState();
}

class _SettingspageState extends State<Settingspage> {
  @override
  bool is_pressed = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 1.5,
        backgroundColor: /*Colors.teal.shade300,*/
            Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pop(); //brings back to edit profile
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Container(
        // padding: EdgeInsets.only(left: 16, top: 20),
        child: ListView(
          children: [
            //settings wala
            ListTile(
              // leading: Icon(Icons.settings),
              title: Text("Settings",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),

            // account wala
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => Edit_profile_page()),
                );
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                leading: Icon(
                  Icons.person_outline,
                  color: Colors.orange,
                ),
                title: Text(
                  "Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            // theme wala
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 32,
                    ),
                    Icon(
                      Icons.bedtime_outlined,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      "Dark Theme",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),

                Switch(
                  value: themeManager.themeMode == ThemeMode.dark,
                  onChanged: (newValue) {
                    // setState(() {
                      themeManager.toggleTheme(newValue);
                    // });

                  },
                ),
              ],
            ),
            // FlatButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //           builder: (BuildContext context) => change_theme()),
            //     );
            //   },
            //   child: ListTile(
            //     contentPadding: EdgeInsets.symmetric(horizontal: 15),
            //     leading: Icon(
            //       Icons.bedtime_outlined,
            //       color: Colors.orange,
            //     ),
            //     title: Text(
            //       "Theme",
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //     ),
            //   ),
            // ),

            SizedBox(
              height: 5,
            ),

            //about us wala
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => about_us()),
                );
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                leading: Icon(
                  Icons.announcement_outlined,
                  color: Colors.orange,
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),



            // Text(
            //   "Settings",
            //   style: TextStyle(
            //     fontSize: 25,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),
            //
            // SizedBox(
            //   height: 15,
            // ),
            // Row(
            //   children: [
            //     // Icon(
            //     //   Icons.account_circle_outlined,
            //     //
            //     // ),
            //
            //     // Icon(
            //     //   Icons.person_outline,
            //     //   color: Colors.orange,
            //     // ),
            //
            //     // Text(
            //     //   "Account",
            //     //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //     // )
            //   ],
            // ),

            // Container(
            //   padding: EdgeInsets.only(left: 5, right: 10),
            //   child: Divider(
            //     height: 15,
            //     thickness: 2,
            //   ),
            // ),

            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Change Password",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),

                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey.shade900,
                )
              ],
            ),*/

            // SizedBox(height: 10,),

            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Content Settings",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),

                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey.shade900,
                )
              ],
            ),*/

            // SizedBox(height: 10,),
            //
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Content Settings",
            //       style: TextStyle(
            //           fontSize: 18
            //       ),
            //     ),
            //
            //     Icon(
            //       Icons.arrow_forward_ios_outlined,
            //       color: Colors.grey.shade900,
            //     )
            //   ],
            // ),
            //
            // SizedBox(
            //   height: 25,
            // ),

            // Row(
            //   children: [
            //     // Icon(
            //     //   Icons.account_circle_outlined,
            //     //
            //     // ),
            //
            //     Icon(
            //       Icons.person_outline,
            //       color: Colors.orange,
            //     ),
            //
            //     SizedBox(
            //       width: 8,
            //     ),
            //
            //     Text(
            //       "Account",
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //     )
            //   ],
            // ),
            //
            // Container(
            //   padding: EdgeInsets.only(left: 5, right: 10),
            //   child: Divider(
            //     height: 15,
            //     thickness: 2,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
