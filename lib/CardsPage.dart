import 'package:flutter/material.dart';
import 'package:untitled/NavigationMenu.dart';

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
              SizedBox(width: 65,),
              Text('Customizable Cards',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),

            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'More',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 280,),
                Icon(Icons.arrow_drop_down,size: 30,),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 328,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(10, 10)
                )
              ],
            ),
            child: Image.asset('assets/getstarted/Component 5.png'),// Bottom container
          ),
          SizedBox(height: 20,),
          Container(
            width: 328,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(10, 10)
                )
              ],
            ),
            child: Image.asset('assets/getstarted/Component 6b.png'),// Bottom container
          ),
          SizedBox(height: 20,),
          Container(
            width: 328,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: Offset(10, 10)
                )
              ],
            ),
            child: Image.asset('assets/getstarted/Component 7.png'),// Bottom container
          ),
        ],
      ),
    );
  }
}
