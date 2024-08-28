import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:vyder/Authentication/view.dart';
import 'package:vyder/Service/authentication.dart';
import 'package:vyder/UI/homepage.dart';
import 'package:vyder/demo/sample2.dart';

class OtpPage extends StatefulWidget {
  String vid;
  OtpPage({super.key, required this.vid});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

final FirebaseAuthService _authservice = FirebaseAuthService();

var code = '';

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: Column(
          children: [
            const Text("Enter Otp"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                length: 6,
                onChanged: (value) {
                  setState(() {
                    code = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
                onPressed: () {
                  signIn();
                },
                child: const Text("Confirm"))
          ],
        ),
      ),
    );
  }

  signIn() async {
    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(verificationId: widget.vid, smsCode: code);
    try {
      await FirebaseAuth.instance.signInWithCredential(credential).then(
          (value) => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen())));
    } on FirebaseAuthException catch (e) {
      print('Error Occured: ${e.code}');
    } catch (e) {
      print('Error Occured : ${e.toString()}');
    }
  }
}
