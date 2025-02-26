import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/HomeScreen.dart';
import 'package:untitled/NavigationMenu.dart';
import 'package:untitled/wrapper.dart';
import 'package:get/get.dart';
import 'Login2.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );

      // Navigate to NavigationMenu after successful signup
      Get.offAll(() => NavigationMenu());
    } catch (e) {
      Get.snackbar(
        "Signup Failed",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(

                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/getstarted/WhatsApp Image 2025-02-08 at 15.42.19 (3) 1.png'),

                  ),
                ),
              ),
              Text("Hey there", style: TextStyle(fontSize: 16)),
              Text("Create an Account", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 21),
              Container(
                height: 54,
                width: 345,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF808080), width: 1),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.person_2_outlined, color: Color(0xFF808080), size: 20),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "First Name",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(fontSize: 14, color: Color(0xFF808080)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21),
              Container(
                height: 54,
                width: 345,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF808080), width: 1),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.person_2_outlined, color: Color(0xFF808080), size: 20),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(fontSize: 14, color: Color(0xFF808080)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21),
              Container(
                height: 54,
                width: 345,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF808080), width: 1),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.email_outlined, color: Color(0xFF808080), size: 20),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          labelText: "Email or Mobile number",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(fontSize: 14, color: Color(0xFF808080)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21),
              Container(
                height: 54,
                width: 345,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF808080), width: 1),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.lock_outline, color: Color(0xFF808080), size: 20),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: password,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(fontSize: 14, color: Color(0xFF808080)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Container(
                height: 54,
                width: 345,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.check_box_outline_blank, color: Color(0xFF808080), size: 20),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text('By continuing you accept our Privacy Policy and Term of Use',style: TextStyle(fontSize: 14, color: Color(0xFF808080)),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              GestureDetector(
                onTap: signUp,
                child: Container(
                  width: 345,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 345,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(11)
                ),
                child:Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xFF808080),
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or",
                        style: TextStyle(fontSize: 14, color: Color(0xFF808080)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xFF808080),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 36,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF808080), width: 1),
                ),
                child: Image.asset('assets/getstarted/google.png'),
              ),
              Container(
                height: 40,
                width: 260,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(11)
                ),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Already Have an account?',style: TextStyle(fontSize: 15),),
                    GestureDetector(
                        onTap: () => Get.to(() => Login2()),
                        child: Text('Log in',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
