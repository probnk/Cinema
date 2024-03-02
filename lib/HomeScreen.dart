import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema/adds.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List url = ['1.jpg', '2.jfif', '4.jpg', '5.avif', '6.jpg', '7.jpg'];
  List text = ['All','TV Show','Movies'];
  int _selectedIndex=0;

  Widget appBar() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sort,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                'Cinema',
                style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buttonList() {
    return Container(
      height: 50,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),

                    animationDuration: Duration(milliseconds: 1000,),
                    backgroundColor: _selectedIndex == index ? Colors.red.shade900 : Colors.grey.shade900
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Text('${text[index]}',
                    style: GoogleFonts.barlowCondensed(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ),
            );
          }
      ),
    );
  }

  Adds(){
    return CarouselSlider(
        items: [
          listBuilder(height: 250, width: 300)
        ],
        options:  CarouselOptions(
            height: 250,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds:800),
            viewportFraction: 1,
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            appBar(),
            buttonList(),
            Adds(),
            Container(
              margin: EdgeInsets.only(left:10,right: 200),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text('Top TV Shows',
                style: GoogleFonts.teko(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            listBuilder(height: 180,width: 130,),
            Container(
              margin: EdgeInsets.only(left:10,right: 230),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.red.shade900,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text('Top Movies',
                style: GoogleFonts.chenla(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                ),
              ),
            listBuilder(height: 200,width: 150,),
          ],
        ),
      ),
    );
  }
}