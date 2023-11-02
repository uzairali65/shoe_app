// ignore_for_file: avoid_print

import 'package:app/User%20Interface/forgetpass.dart';
import 'package:app/User%20Interface/incorrect.dart';
import 'package:app/User%20Interface/succesfullylogined.dart';
import 'package:flutter/material.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              "WELCOME!",
              style: TextStyle(fontSize: 27, color: Colors.black,fontWeight: FontWeight.bold),
            ),
            const Text("Please login or sign in to continue the app"),
            const SizedBox(
              height: 60,
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const ForgetView()));
              },
              child: Container(
                alignment: Alignment.topRight,
                child: const Text("Forget Password?"),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                        if(emailController.text.contains("@") && emailController.text.contains(".com")){
                          // ignore: prefer_const_constructors
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Logined()));
                        }else{
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const InCorrectPassword()));
                        }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.black),
                  child: const Center(
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(), backgroundColor: Colors.blue),
                child: const Row(children: [
                  Icon(Icons.facebook,size: 33,),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Continue with Facebook")
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black),
                child: Row(children: [
                  Image.network(
                      'https://pngimg.com/uploads/google/google_PNG19635.png',
                      fit: BoxFit.cover),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text("Continue with Google")
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white),
                child: const Row(children: [
                  Icon(Icons.apple,size: 33,),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Continue with Apple")
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
