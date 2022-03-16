import 'package:flutter/material.dart';
import 'package:settings_page/pages/edit_profile.dart';
import 'package:settings_page/pages/settings.dart';
import 'package:settings_page/theme/theme.dart';
import 'package:settings_page/theme/theme_change.dart';

void main() {
  runApp(MyApp(),);
}

ThemeManager themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void dispose() {
    themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Settingspage(),
      // theme: ThemeData(
      //   // primarySwatch: Colors.orange,
      //   brightness: Brightness.light,
      // ),

      theme: lighttheme,
      darkTheme: darktheme,
      themeMode: themeManager.themeMode,
      debugShowCheckedModeBanner: false,
    );
  }
}

// import 'package:flutter/material.dart';
//
// // import 's';
// // import 'package:flutter_settings_screens/flutter_settings_screens.dart';
// void main() {
//   runApp(Settings_page());
// }
//
// class Settings_page extends StatefulWidget {
//   // const Settings_page({Key? key}) : super(key: key);
//
//   @override
//   _Settings_pageState createState() => _Settings_pageState();
// }
//
// class _Settings_pageState extends State<Settings_page> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "SEETING UI",
//       home: Edit_profile_page(),
//     );
//   }
// }
//
// class Edit_profile_page extends StatefulWidget {
//   const Edit_profile_page({Key? key}) : super(key: key);
//
//   @override
//   _Edit_profile_pageState createState() => _Edit_profile_pageState();
// }
//
// class _Edit_profile_pageState extends State<Edit_profile_page> {
//   bool isPasswordVisible = false;
//
//   Widget build_TextField(bool isPasswordTextField,
//       {required String labelText, required String placeholder}) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 25,
//         ),
//         TextField(
//           //to take input from the user
//           showCursor: true,
//           obscureText: isPasswordTextField ? isPasswordVisible : false,
//           decoration: InputDecoration(
//             suffixIcon: isPasswordTextField
//                 ? IconButton(
//                     onPressed: () {
//                       setState(() {
//                         isPasswordVisible = !isPasswordVisible;
//                       });
//                     },
//                     icon: Icon(Icons.remove_red_eye),
//                   )
//                 : null,
//             contentPadding: EdgeInsets.only(bottom: 3),
//             labelText: labelText,
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             hintText: placeholder,
//             hintStyle: TextStyle(
//               fontWeight: FontWeight.w300,
//               fontSize: 16,
//               color: Colors.black45,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Edit Profile"),
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         elevation: 1,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back,
//             color: Colors.green,
//           ),
//           onPressed: () {},
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.settings,
//               color: Colors.green,
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Container(
//         padding: EdgeInsets.fromLTRB(15, 25, 0, 0),
//         child: GestureDetector(
//           onTap: () {
//             FocusScope.of(context).unfocus();
//           },
//           child: ListView(
//             children: [
//               Text(
//                 "Edit Profile",
//                 style: TextStyle(
//                   // letterSpacing: 1,
//                   fontSize: 25,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//
//               SizedBox(
//                 height: 20,
//               ),
//
//               Center(
//                 child: Stack(
//                   children: [
//                     Container(
//                       height: 130,
//                       width: 130,
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                           width: 2,
//                           color: Colors.teal,
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             spreadRadius: 2,
//                             blurRadius: 12,
//                             color: Colors.black87.withOpacity(0.1),
//                             offset: Offset(0, 20),
//                           )
//                         ],
//                         // borderRadius: ,
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           fit: BoxFit.cover,
//                           image: AssetImage('assets/minion.jpg'),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       right: 0,
//                       child: Container(
//                         height: 40,
//                         width: 40,
//                         decoration: BoxDecoration(
//                           color: Colors.teal,
//                           shape: BoxShape.circle,
//                           border: Border.all(
//                             width: 4,
//                             color: Theme.of(context).scaffoldBackgroundColor,
//                           ),
//                         ),
//                         child: Icon(
//                           Icons.edit,
//                           color: Colors.white,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//
//               // TextField(
//               //   //to take input from the user
//               //   showCursor: true,
//               //   decoration: InputDecoration(
//               //     contentPadding: EdgeInsets.only(bottom: 3),
//               //     labelText: "Full Name",
//               //     floatingLabelBehavior: FloatingLabelBehavior.always,
//               //     hintText: "Ram Verma",
//               //     hintStyle: TextStyle(
//               //       fontWeight: FontWeight.bold,
//               //       fontSize: 16,
//               //       color: Colors.black,
//               //     ),
//               //   ),
//               // ),
//
//               build_TextField(false,
//                   labelText: 'Full Name', placeholder: 'Ex.Ram Verma'),
//               build_TextField(false,
//                   labelText: 'Email-id', placeholder: 'Ex.jhskjdhd@gmail.com'),
//               build_TextField(true,
//                   labelText: 'Password', placeholder: '********'),
//               build_TextField(false,
//                   labelText: 'Location', placeholder: 'Ex.-Pune,Maharashtra'),
//
//               SizedBox(
//                 height: 35,
//               ),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   // SizedBox(
//                   //   width: 30,
//                   // ),
//                   OutlineButton(
//                     padding: EdgeInsets.symmetric(horizontal: 30),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Cancel",
//                       style: TextStyle(
//                         fontSize: 14,
//                         letterSpacing: 2,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                   // SizedBox(
//                   //   width: 20,
//                   // ),
//                   RaisedButton(
//                     padding: EdgeInsets.symmetric(horizontal: 35),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     color: Colors.green.shade400,
//                     onPressed: () {},
//                     child: Text(
//                       "Save",
//                       style: TextStyle(
//                           color: Colors.white, fontSize: 14, letterSpacing: 2),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // class Settings extends StatefulWidget {
// //   const Settings({Key? key}) : super(key: key);
// //
// //   @override
// //   _SettingsState createState() => _SettingsState();
// // }
// //
// // class _SettingsState extends State<Settings> {
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     return Container(
// //       color: Colors.grey.shade800,
// //       child: Center(
// //         child: Container(
// //           // height: 400,
// //           // width: 350,
// //           color: Colors.grey.shade400,
// //           /*child: Column(
// //             children: [
// //               /*FlatButton(
// //                 padding: EdgeInsets.all(0),
// //
// //                 onPressed: () {},
// //                 child: Text('fg'),
// //               ),*/
// //             ],
// //           ),*/
// //         ),
// //       ),
// //     );
// //   }
// // }
