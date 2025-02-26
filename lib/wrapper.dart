import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/Login2.dart';
import 'package:untitled/getstarted.dart';

class wrapper extends StatefulWidget {
  const wrapper({super.key});

  @override
  State<wrapper> createState() => _wrapperState();
}

class _wrapperState extends State<wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
            if (snapshot.hasData){
              return HomeScreen();
            }else{
              return getstarted();
            }
          },
      ),
    );
  }
}
