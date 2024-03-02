import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Movie extends StatelessWidget {
  final String url;
  const Movie({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Image.asset('assets/pic$url',fit: BoxFit.fill,)
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 350),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(text: TextSpan(
                    children: [
                        TextSpan(
                          text: '18+',
                          style: TextStyle(
                              fontFamily: 'font1',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black
                          )
                        ),
                      TextSpan(
                          text: ' Adventure, Drama, Mystery',
                          style:  GoogleFonts.comfortaa(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                      ),
                      TextSpan(
                          text: '             2h 2min',
                          style: TextStyle(
                              fontFamily: 'font1',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black
                          )
                      )
                      ]
                    )
                  ),
                  SizedBox(height: 2,),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Storyline',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black
                            )
                        ),
                        TextSpan(
                            text: '\nLorem Ipsum is simply dummy text '
                                'of the printing and typesetting industry.'
                                ' Lorem Ipsum has been the industry s'
                                ' standard dummy text ever since the'
                                ' 1500s, when an unknown printer took'
                                ' a galley of type and scrambled it.',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontSize: 16,
                                color: Colors.grey
                            )
                        ),
                        TextSpan(
                            text: '\n\nYear',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black
                            )
                        ),
                        TextSpan(
                            text: '           2019',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontSize: 16,
                                color: Colors.grey
                            )
                        ),
                        TextSpan(
                            text: '\nCountry',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black
                            )
                        ),
                        TextSpan(
                            text: '           Brazil,USA,China',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontSize: 16,
                                color: Colors.grey
                            )
                        ),
                        TextSpan(
                            text: '\nDirector',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black
                            )
                        ),
                        TextSpan(
                            text: '           James Gray',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontSize: 16,
                                color: Colors.grey
                            )
                        ),
                        TextSpan(
                            text: '\nCast',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black
                            )
                        ),
                        TextSpan(
                            text: '           Brad Pitt,Tommy Lee Jones,Ruth Negga,'
                                'Liv Taylor,Donald Sutherland, Jamie '
                                'Kennedy, jhon Finn,Kimberly Elise,Bobby '
                                'Nish,LisaGay Hamilton,Jhon Ortiz...',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontSize: 16,
                                color: Colors.grey
                            )
                        ),
                        TextSpan(
                            text: '\nRelease Date',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black
                            )
                        ),
                        TextSpan(
                            text: '           20 September 2019(USA)',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontSize: 16,
                                color: Colors.grey
                            )
                        ),
                      ]
                    )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:90,top:720),
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      shadowColor: Color(0xff1d8fd1),
                      backgroundColor: Colors.blue.shade900,
                      elevation: 20
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.local_movies_outlined,color: Colors.white,size: 25,),
                  label: Text('Buy a Ticket',
                  style: TextStyle(
                      fontFamily: 'font1',
                      color: Colors.white,
                      fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                  )
              ),
            )
          ],
        )
    );
  }
}
