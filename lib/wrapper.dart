import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:paymentapp/HomeScreen.dart';
import 'package:paymentapp/Login2.dart';
import 'package:paymentapp/NavigationMenu.dart';
import 'package:paymentapp/getstarted.dart';

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
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NavigationMenu();
          } else {
            return getstarted();
          }
        },
      ),
    );
  }
}
