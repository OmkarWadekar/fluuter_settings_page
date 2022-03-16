import 'package:flutter/material.dart';
import 'package:settings_page/pages/carouselcont1.dart';
import 'package:settings_page/pages/settings.dart';

class about_us extends StatefulWidget {
  const about_us({Key? key}) : super(key: key);

  @override
  _about_usState createState() => _about_usState();
}

class _about_usState extends State<about_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          "About US",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            // color: Colors.green,
            // color: /*Theme.of(context).splashColor,*/Colors.black,
            // color: Theme.of(context).selectedRowColor,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => Settingspage()),
            );
          },
        ),

        /*actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            onPressed: () {},
          ),

        ],*/
      ),
      body: Container(
        child: carouscont(),
      ),
    );
  }
}
