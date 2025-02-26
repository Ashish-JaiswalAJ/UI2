import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/getstarted.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final user=FirebaseAuth.instance.currentUser;

  signOut()async{
    await FirebaseAuth.instance.signOut();
    Get.offAll(() => getstarted());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: //Center(child: GestureDetector(onTap: signOut, child: Icon(Icons.logout, color: Colors.black, size: 50),))
      SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 63),
            Container(
              height: 100,
              child: Row(
                children: [
                  SizedBox(width: 0),
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/getstarted/getstarted.png'),
                      radius: 70,
                    ),
                  ),
                  SizedBox(width: 0),
                  Container(
                    margin: EdgeInsets.only(top: 27,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('AB Devillers',style: TextStyle(fontSize: 16),),
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
                  SizedBox(width: 70),
                  GestureDetector(
                    onTap: signOut,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFFC1C1C1),
                              width: 1,
                            ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(2, 2)
                          )
                        ],
                      ),
                      child: Image.asset('assets/getstarted/bell.png'),
                    ),
                  )

                ],
              ),
            ),

            Container(

              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text('AB Devillers',textAlign: TextAlign.left,style: TextStyle(fontSize: 14,color: Color(0xFF808080)),),
                      Text("\$80,098.00",textAlign: TextAlign.left,style: TextStyle(fontSize: 26 ),),
                      SizedBox(height: 15),
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
          ],
        ),
      ),
    );
  }
}
