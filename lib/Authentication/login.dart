import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vyder/Authentication/otplogin.dart';
import 'package:vyder/Authentication/signup.dart';
import 'package:vyder/Authentication/view.dart';
import 'package:vyder/Bot/bot.dart';
import 'package:vyder/Service/authentication.dart';
import 'package:vyder/UI/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController repasswordcontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();

  final FirebaseAuthService _authservice = FirebaseAuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Center(
          //     child: Text("Bloom",
          //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40))),
          ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text("Bloom",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              const SizedBox(height: 100),
              const Text("Sign in with email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(height: 30),
              Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: const Color.fromRGBO(241, 243, 245, 1),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: const Color.fromRGBO(241, 243, 245, 1),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text("OR"),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      keyboardType: const TextInputType.numberWithOptions(),
                      controller: otpcontroller,
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: const Color.fromRGBO(241, 243, 245, 1),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        _authservice.sendCode(context, otpcontroller.text);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(134, 231, 24, 1),
                        minimumSize: const Size(200, 55),
                      ),
                      child: const Text("Continue",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20))),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                      child: const Text("Don’t have an account? Sign up",
                          style: TextStyle(color: Colors.black))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
