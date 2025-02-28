import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/getstarted.dart';

class Netflix extends StatefulWidget {
  const Netflix({super.key});

  @override
  State<Netflix> createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: //Center(child: GestureDetector(onTap: signOut, child: Icon(Icons.logout, color: Colors.black, size: 50),))
      SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 53),
            Container(
              height: 100,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/getstarted/pp.jpg'),

                      radius: 35,
                    ),
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
                  padding: const EdgeInsets.only(left: 20,top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text('Total Balance',textAlign: TextAlign.left,style: TextStyle(fontSize: 14,color: Color(0xFF808080)),),
                      Text("\$80,098.00",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26 ),),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 113,
                            height: 33,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.add, color: Colors.white,size: 14,),
                                  SizedBox(width: 5),
                                  Text('Add Money', style: TextStyle(fontSize: 12, color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            width: 90,
                            height: 33,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFC1C1C1),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Row(
                                children: [
                                  Icon(Icons.send, color: Colors.black,size: 14,),
                                  SizedBox(width: 5),
                                  Text('Send', style: TextStyle(fontSize: 12, color: Colors.black),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            width: 100,
                            height: 33,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFFC1C1C1),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 14),
                              child: Row(
                                children: [
                                  Icon(Icons.get_app_outlined, color: Colors.black,size: 14,),
                                  SizedBox(width: 5),
                                  Text('Request', style: TextStyle(fontSize: 12, color: Colors.black),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Recent Transactions', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600, color: Colors.black),),
                  SizedBox(width: 110,),
                  Column(
                    children: [
                      Text('See All', style: TextStyle(fontSize: 15, color: Color(0xFF999898),),),
                      Container(
                        height: 1,
                        width: 50,
                        color: Color(0xFF999898),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 56,
              width: 347,
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
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/getstarted/Ellipse 2.png'),

                      radius: 17.5,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.only(top: 7,left: 0),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chris Hemsworth',style: TextStyle(fontSize: 15),),
                        SizedBox(width: 3),
                        Text('Recieved 29 mins ago',style: TextStyle(color: Color(0xFF808080),fontSize: 11 ),)
                      ],
                    ),
                  ),
                  SizedBox(width: 90),
                  Text('+\$77.98', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600, color: Color(0xFF00E632)),),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 56,
              width: 347,
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
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/getstarted/Ellipse 3.png'),

                      radius: 17.5,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.only(top: 7,left: 0),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lionel Messi',style: TextStyle(fontSize: 15),),
                        SizedBox(width: 3),
                        Text('Recieved 1 hour ago',style: TextStyle(color: Color(0xFF808080),fontSize: 11 ),)
                      ],
                    ),
                  ),
                  SizedBox(width: 105),
                  Text('+\$29.57', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600, color: Color(0xFF00E632)),),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 56,
              width: 347,
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
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/getstarted/Ellipse 4.png'),

                      radius: 17.5,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.only(top: 7,left: 0),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ms Dhoni',style: TextStyle(fontSize: 15),),
                        SizedBox(width: 3),
                        Text('Sent 2 hour ago',style: TextStyle(color: Color(0xFF808080),fontSize: 11 ),)
                      ],
                    ),
                  ),
                  SizedBox(width: 130),
                  Text('-\$11.02', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600, color: Color(0xFFFF1717)),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
