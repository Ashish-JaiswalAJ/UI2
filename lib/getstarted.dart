import 'package:flutter/material.dart';
import 'Login.dart';

class getstarted extends StatefulWidget {
  const getstarted({super.key});

  @override
  State<getstarted> createState() => _getstartedState();
}

class _getstartedState extends State<getstarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
            SizedBox(height: 23),
            Container(height:650,width: 650,child: Image.asset('assets/getstarted/getstarted.png',height: 556,width: 448,)),
                SizedBox(height: 0),
            Positioned(
              top: 481,
                left: 66,
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.left,
                      'Banking made',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
                    ),
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        style: TextStyle(fontSize: 32, color: Colors.black),
                        children: [
                          TextSpan(text: 'faster ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'and ', style: TextStyle(fontWeight: FontWeight.w400)),
                          TextSpan(text: 'easier ', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),

                    RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: TextStyle(fontSize: 32, color: Colors.black),
                          children: [
                            TextSpan(text: 'with ', style: TextStyle(fontWeight: FontWeight.w400)),
                            TextSpan(text: 'QuickPay', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.left,
                      'Pay smarter, not harder.',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),),
              ]
            ),
            SizedBox(height: 76),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 35, height: 5, decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5))),
                SizedBox(width: 5),
                Container(width: 35, height: 5, decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(5))),
                SizedBox(width: 5),
                Container(width: 35, height: 5, decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(5))),
              ],
            ),
            SizedBox(height: 42),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Container(
                width: 303,
                height: 51,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),

          ],
        )
      ),
    );
  }
}
