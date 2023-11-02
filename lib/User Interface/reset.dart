import 'package:app/User%20Interface/loginpage.dart';
import 'package:flutter/material.dart';

class ResetView extends StatelessWidget {
  const ResetView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                  image: AssetImage(
                "assets/images.png",
              )),
              const SizedBox(
                height: 14,
              ),
              const Text(
                "RESET YOUR PASSWORD",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Password",
                  )),
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
              Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Confirm Password",
                  )),
              TextField(
                obscureText: true,
                controller: confirmpassword,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: UnderlineInputBorder(),
                    hintText: "Confirm Password"),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (passwordController.text == confirmpassword.text) {
                        // ignore: prefer_const_constructors
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginView()));
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ResetView()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.black),
                    child: const Center(
                      child: Text(
                        "Change Password",
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
