import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/NavigationMenu.dart';
import 'Login.dart';
class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void>signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );


      // Navigate to NavigationMenu after successful login
      Get.offAll(() => NavigationMenu());
      print("Login Successful");
    } catch (e) {
      print("Error: $e");
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

                height: 388,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/getstarted/download 1.png'),

                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("Hey you’re already set!", style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text("Just log in and go", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 25),
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
              SizedBox(height: 30),
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

              SizedBox(height: 30),
              GestureDetector(
                onTap: signIn,
                child: Container(
                  width: 345,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
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
                    Text("Don't Have an account?",style: TextStyle(fontSize: 15),),
                    GestureDetector(
                        onTap: () => Get.to(() => Login()),
                        child: Text('Register',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
