import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/CardsPage.dart';
import 'package:untitled/HistoryPage.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/NavigationMenu.dart';
import 'package:untitled/ProfilePage.dart';
import 'package:untitled/ScanPage.dart';
import 'package:untitled/getstarted.dart';

class Netflix extends StatefulWidget {
  const Netflix({super.key});

  @override
  State<Netflix> createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    HistoryPage(),
    CardsPage(),
    ProfilePage(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body://Center(child: GestureDetector(onTap: signOut, child: Icon(Icons.logout, color: Colors.black, size: 50),))
      SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                SizedBox(width: 25,),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NavigationMenu()),
                      );
                    },
                    child: Icon(Icons.arrow_back_ios,size: 18,color: Colors.black,)),
                SizedBox(width: 118,),
                Text('Netflix',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
                SizedBox(width: 100,),
                Text('Save',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
              ],
            ),
            SizedBox(height: 35,),
            Image.asset('assets/getstarted/netflix 2.png'),
            SizedBox(height: 20),
            Container(
              height: 100,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Container(
                    child: Image.asset('assets/getstarted/nn.png'),
                  ),
                  SizedBox(width: 20),
                  Container(
                    margin: EdgeInsets.only(top: 27,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('AB Devillers',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align( alignment: Alignment.centerLeft,child: Icon(Icons.verified, color: Color(0xFFFFC107), size: 15,)),
                            SizedBox(width: 3),
                            Text('Premium',style: TextStyle(color: Color(0xFF808080) ),)
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),

            Container(

              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            width: 86,
                            height: 82,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFC1C1C1),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Text('Basic', style: TextStyle(fontSize: 12, color: Colors.black),),
                                SizedBox(height: 15,),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: '\$2.48', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                                      TextSpan(text: ' /m', style: TextStyle(fontSize: 12 , color: Colors.black),),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                          SizedBox(width: 38),
                          Container(
                            width: 86,
                            height: 82,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFC1C1C1),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Text('Standard', style: TextStyle(fontSize: 12, color: Colors.black),),
                                SizedBox(height: 15,),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: '\$7.73', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                                      TextSpan(text: ' /m', style: TextStyle(fontSize: 12 , color: Colors.black),),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                          SizedBox(width: 38),
                          Container(
                            width: 86,
                            height: 82,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Text('Premium', style: TextStyle(fontSize: 12, color: Colors.white),),
                                SizedBox(height: 15,),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: '\$17.99', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                                      TextSpan(text: ' /m', style: TextStyle(fontSize: 12 , color: Colors.white),),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 17,),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  Text('Billing', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600, color: Colors.black),),
                ],
              ),
            ),
            SizedBox(height: 17,),
            Container(
              height: 77,
              width: 338,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFC1C1C1),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Container(
                    margin: EdgeInsets.only(top: 15,left: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('First payment',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                        SizedBox(height: 5),
                        Text('Set another date',style: TextStyle(color: Color(0xFF808080),fontSize: 12 ),)
                      ],
                    ),
                  ),
                  SizedBox(width: 170),
                  Text('Today', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600, color: Colors.black),),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 77,
              width: 338,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFC1C1C1),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Container(
                    margin: EdgeInsets.only(top: 15,left: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Payment Method',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                        SizedBox(height: 5),
                        Text('Select another method',style: TextStyle(color: Color(0xFF808080),fontSize: 12 ),)
                      ],
                    ),
                  ),
                  SizedBox(width: 140),
                  Container(
                    width: 36,
                    height: 33,
                    decoration: BoxDecoration(
                      color: Color(0xFFEBEBEB),
                      border: Border.all(
                        color: Color(0xFFC1C1C1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Image.asset('assets/getstarted/GG.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 338,
              height: 51,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 1,
            color: Colors.black,
          ),
          BottomAppBar(
            color: Colors.white,
            child: SizedBox(
              height: 58,

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home_outlined, size: 30, color: _selectedIndex == 0 ? Colors.black : Colors.grey),
                      onPressed: () => _onItemTapped(0),
                    ),
                    IconButton(
                      icon: Icon(Icons.history, size: 30 , color: _selectedIndex == 1 ? Colors.black : Colors.grey),
                      onPressed: () => _onItemTapped(1),
                    ),
                    SizedBox(width: 50),
                    IconButton(
                      icon: Icon(Icons.credit_card, size: 30, color: _selectedIndex == 2 ? Colors.black : Colors.grey),
                      onPressed: () => _onItemTapped(2),
                    ),
                    IconButton(
                      icon: Icon(Icons.person_outlined, size: 30, color: _selectedIndex == 3 ? Colors.black : Colors.grey),
                      onPressed: () => _onItemTapped(3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Colors.black,
          child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 30),
          onPressed: () {
            if (Navigator == null) {

            }
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
