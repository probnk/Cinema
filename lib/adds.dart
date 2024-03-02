import 'package:cinema/Movie.dart';
import 'package:flutter/material.dart';

class listBuilder extends StatelessWidget {
  final double height;
  final double width;

  listBuilder({super.key, required this.height, required this.width});
  List url = ['1.jpg', '2.jfif', '4.jpg', ' 5.avif', '6.jpg', '7.jpg'];


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 250,
      child: ListView.builder(
        itemCount: url.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Movie(url:url[index])));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20),
              width: width,
              height:height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/pic${url[index]}',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}