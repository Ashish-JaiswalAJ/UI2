import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getstarted.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final user=FirebaseAuth.instance.currentUser;

  signOut()async{
    await FirebaseAuth.instance.signOut();
    Get.offAll(() => getstarted());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                SizedBox(width: 120),
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
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text('Payment List', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600, color: Colors.black),),
                SizedBox(width: 179,),
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
          SizedBox(height: 40,),
          Container(
            width: 354,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFC1C1C1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(0, 4)
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15),
                  child: Row(
                    children: [

                      Text('Recharge & Pay Bills', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600, color: Colors.black),),
                      SizedBox(width: 140,),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text('View All', style: TextStyle(fontSize: 10, color: Colors.white),)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15),
                  child: Row(
                    children: [
                      SizedBox(width: 8,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/mobile 2.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('  Mobile\nRecharge', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/lamp 1.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('Electricity\n     Bill', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/gas 1.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('    Gas\nCylinder', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/house 1.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('  Rent\nHouse', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Container(
            width: 354,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFC1C1C1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(0, 4)
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15),
                  child: Row(
                    children: [

                      Text('Recharge & Pay Bills', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600, color: Colors.black),),
                      SizedBox(width: 140,),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text('View All', style: TextStyle(fontSize: 10, color: Colors.white),)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15),
                  child: Row(
                    children: [
                      SizedBox(width: 8,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/mobile 2.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('  Mobile\nRecharge', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/lamp 1.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('Electricity\n     Bill', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/gas 1.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('    Gas\nCylinder', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/house 1.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('  Rent\nHouse', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Container(
            width: 354,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFC1C1C1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(0, 4)
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15),
                  child: Row(
                    children: [

                      Text('Insurance', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600, color: Colors.black),),
                      SizedBox(width: 205,),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(child: Text('View All', style: TextStyle(fontSize: 10, color: Colors.white),)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15),
                  child: Row(
                    children: [
                      SizedBox(width: 8,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/mobile 2.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('Bike\nInsurance', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                      SizedBox(width: 32,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/lamp 1.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('Car\nInsurance', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                      SizedBox(width: 32,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/gas 1.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('Health\nInsurance', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                      SizedBox(width: 32,),
                      Column(
                        children: [
                          Image.asset('assets/getstarted/house 1.jpg',height: 25,width: 25,),
                          SizedBox(height: 8,),
                          Text('Term Life\nInsurance', style: TextStyle(fontSize: 12, color: Color(0xFF707070),),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
