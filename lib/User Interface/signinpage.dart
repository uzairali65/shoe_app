// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:app/User%20Interface/succesfullylogined.dart';
import 'package:flutter/material.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
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

  bool is_checked = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text("Create a new account"),
              const SizedBox(
                height: 60,
              ),
              const Text("Email"),
              TextField(
                controller: username,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    border: UnderlineInputBorder(),
                    hintText: "Name"),
              ),
              const SizedBox(
                height: 15,
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
                height: 15,
              ),
              const Text("Confirm Password"),
              TextField(
                obscureText: true,
                controller: confirmpassword,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: UnderlineInputBorder(),
                    hintText: "Confirm Password"),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                      value: is_checked,
                      onChanged: (val) {
                        setState(() {
                          is_checked = val!;
                        });
                      }),
                  const Expanded(
                    child: Text(
                      "By creating an account you have to agree our terms & conditions",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
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
                          emailController.text.contains(".com") &&
                          confirmpassword.text == passwordController.text) {
                        // ignore: prefer_const_constructors
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Logined()));
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SigninView()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.black),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
