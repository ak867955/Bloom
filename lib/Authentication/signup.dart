import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vyder/Authentication/chip.dart';
import 'package:vyder/Authentication/view.dart';
import 'package:vyder/Service/authentication.dart';
import 'package:vyder/UI/homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController repasswordcontroller = TextEditingController();

  final FirebaseAuthService _authservice = FirebaseAuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create your account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  textform(
                    hinttext: "Name",
                    icon: const Icon(Icons.person_2_outlined),
                    controller: namecontroller,
                  ),
                  const SizedBox(height: 10),
                  textform(
                      hinttext: "DOB",
                      icon: const Icon(Icons.cake_outlined),
                      controller: dobcontroller),
                  const SizedBox(height: 10),
                  textform(
                      hinttext: "Email",
                      icon: const Icon(Icons.email_outlined),
                      controller: emailcontroller),
                  const SizedBox(height: 10),
                  textform(
                      hinttext: "Password",
                      icon: const Icon(Icons.password),
                      controller: passwordcontroller),
                  const SizedBox(height: 10),
                  textform(
                      hinttext: "Re Enter Password",
                      icon: const Icon(Icons.password),
                      controller: repasswordcontroller),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      chips(label: const Text("Technology")),
                      chips(label: const Text("Enterpreneurship")),
                      chips(label: const Text("Investing")),
                    ]),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                chips(label: const Text("Music")),
                chips(label: const Text("Science")),
                chips(label: const Text("Books")),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                chips(label: const Text("Climate")),
                chips(label: const Text("Art")),
                chips(label: const Text("More Intrests")),
              ],
            ),
            const SizedBox(height: 15),
            const Text("OR Login With ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(244, 241, 229, 1),
                      minimumSize: const Size(150, 55)),
                  child: const Text(
                    "Google",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(244, 241, 229, 1),
                      minimumSize: const Size(150, 55)),
                  child: const Text(
                    "Facebook",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))
            ]),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  signup();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(134, 231, 24, 1),
                    minimumSize: const Size(200, 55)),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }

  Future<void> signup() async {
    // String name = namecontroller.text;
    // String dob = dobcontroller.text;
    String email = emailcontroller.text;
    String password = passwordcontroller.text;
    // String reenterpassword = repasswordcontroller.text;

    User? user = await _authservice.signUpWithEmailAndPassword(email, password);
    if (user != null) {
      print("found");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      print("error");
    }
  }
}
