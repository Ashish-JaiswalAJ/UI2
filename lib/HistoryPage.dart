import 'package:flutter/material.dart';
import 'package:untitled/NavigationMenu.dart';
import 'package:untitled/Netflix.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {

    var arrNames = ['Netflix','Spotify','Figma','Youtube Music','PS Plus Subscription','App Store','     '];
    var arrNames1 = ['Entertainment','Music','Design Tool','Music','Gaming','Entertainment','     '];
    var arrNames2 = ['assets/getstarted/netflix 1.png','assets/getstarted/spotify.png','assets/getstarted/figma.png','assets/getstarted/youtube.png','assets/getstarted/ps.png','assets/getstarted/app.png','assets/getstarted/white.jpg'];
    var arrNames3 = ['\$17.99','\$16','\$15','\$10','\$5','\$5','     '];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(

            height: 219,


            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/getstarted/Card 2.png'),

              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 45,),
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
                        child: Icon(Icons.arrow_back_ios,size: 18,color: Colors.white,)),
                    SizedBox(width: 5,),
                    Text('Billing History',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),),
                    SizedBox(width: 110,),
                    Container(
                      width: 89,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text('Feb 2025', style: TextStyle(fontSize: 12, color: Color(0xFF028DFF)),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    SizedBox(width: 28,),
                    Column(
                      children: [
                        Text('Package Cost', style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 5,),
                        Text('\$77', style: TextStyle(fontSize: 15, color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 28,),
                    Container(
                      height: 31,
                      width: 1,
                      color: Colors.white,
                    ),
                    SizedBox(width: 28,),
                    Column(
                      children: [
                        Text('Entertainment', style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 5,),
                        Text('\$24', style: TextStyle(fontSize: 15, color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 28,),
                    Container(
                      height: 31,
                      width: 1,
                      color: Colors.white,
                    ),
                    SizedBox(width: 28,),
                    Column(
                      children: [
                        Text('Other Costs', style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(height: 5,),
                        Text('\$65', style: TextStyle(fontSize: 15, color: Colors.white),),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 25,),
              Text('Transactions',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black),),
            ],
          ),
          Container(
            child: Expanded(
              child: ListView.separated(itemBuilder: (context,index){
                return ListTile(
                  leading: Image.asset(arrNames2[index],height: 30,width: 30,),
                  title: Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black),),
                  subtitle: Text(arrNames1[index],style: TextStyle(fontSize: 12,color: Color(0xFF808080)),),
                  trailing: Text(arrNames3[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
                  onTap: () {
                    if (index == 0) {
                      // Navigate to Netflix.dart page when the first item is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Netflix()),
                      );
                    }
                  },

                );
              },
                  separatorBuilder: (context,index){
                return Divider(height: 0, thickness: 1,color: Color(0xFFD7D7D7),);
                  },
                  itemCount: (arrNames.length)),
            ),
          )
        ],
      ),
    );
  }
}
