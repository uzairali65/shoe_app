// ignore_for_file: avoid_print

import 'package:app/User%20Interface/signinpage.dart';
import 'package:app/User%20Interface/succesfullylogined.dart';
import 'package:flutter/material.dart';

class InCorrectPassword extends StatelessWidget {
  const InCorrectPassword({super.key});

  onLoginPressed(BuildContext context, emailController,
      TextEditingController passwordController) {
    String email = emailController.text;
    if (email.contains("@") && email.contains(".com")) {
      print("Corerect Email");
      print("Email: ${emailController.text}");
      print("Password: ${passwordController.text}");
    } else {
      print("InCorrect Email");
    }
    emailController.text = "";
    passwordController.text = "";
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => const Logined()));
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "INCORRECT EMAIL OR PASSWORD",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w200),
            ),
            const Text("Email"),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: UnderlineInputBorder(),
                  hintText: "Email Address"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Password"),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: UnderlineInputBorder(),
                  hintText: "Password"),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    
                    if (emailController.text.contains("@") &&
                        emailController.text.contains(".com")) {
                           // ignore: prefer_const_constructors
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Logined()));
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const InCorrectPassword()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.black),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
              width: double.infinity,
              child: Text(
                  "____________________________________________________________________________________________________________________________________________________________________________"),
            ),
             SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SigninView()));
                    },
                    style: ElevatedButton.styleFrom(shape: const StadiumBorder(),backgroundColor: Colors.black),
                    child: const Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                    )),
              ),
          ],
        ),
      ),
    );
  }
}
