import 'package:cinema/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Startup extends StatelessWidget {
  const Startup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Skip ',
                  style: GoogleFonts.abel(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 50,
                  margin: EdgeInsets.only(left: 5,right: 5,),
                  padding: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1,color: Colors.white60),
                  ),
                  child: IconButton(
                    onPressed:  () {},
                    icon: Icon(Icons.navigate_next,size: 30,color: Colors.white60,),
                  ),
                )
              ],
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.all(40),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 1,color: Colors.white24)
              ),
              child:Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(59),
                    border: Border.all(width: 1,color: Colors.white54)
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(43),
                      border: Border.all(width: 1,color: Colors.white)
                  ),
                  child: Icon(Icons.local_cafe_outlined,color: Colors.white,size: 30,),
                ),
              ),
            ),

           Padding(
             padding: const EdgeInsets.only(left:8),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Get ready for an\n incredible shopping\n journey',
                   style: GoogleFonts.raleway(
                     textStyle: TextStyle(
                         color: Colors.white,
                         fontSize:32,
                         fontWeight: FontWeight.bold
                     ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Text('Our e-ecommerce is made for you! Customize\n'
                     'your prefrences to to receive exclusive\n'
                     'recommadendations, special offers, and updates\n'
                     'on the products you love',
                   style: GoogleFonts.abel(
                     textStyle: TextStyle(
                         color: Colors.white70,
                         fontSize: 18,
                         fontWeight: FontWeight.bold
                     ),
                   ),
                 ),
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(top: 50,left:40,right: 40),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      shadowColor: Colors.black,
                      backgroundColor: Colors.black,
                      elevation: 30
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child:Text('Get Started',
                    style: TextStyle(
                        fontFamily: 'font1',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            )
          ],
        ),
      )
    );
  }
}