import         'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class carouscont extends StatefulWidget {
  const carouscont({Key? key}) : super(key: key);

  @override
  _carouscontState createState() => _carouscontState();
}

class _carouscontState extends State<carouscont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      // height: 50,
      child: CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true
          ),
          items: items.map((items) {
            return Builder(builder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.all(4),

                decoration: BoxDecoration(
                    color : items,


                ),
              );
            });
          }).toList()),
      color: Colors.white,
    );
  }
  final List items = [Colors.blueAccent, Colors.limeAccent, Colors.grey];
}
