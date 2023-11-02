import 'package:app/User%20Interface/reset.dart';
import 'package:flutter/material.dart';

class ForgetView extends StatelessWidget {
  const ForgetView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(image: AssetImage("assets/pass.png")),
              const SizedBox(
                height: 14,
              ),
              const Text(
                "FORGOT YOUR PASSWORD",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(
                height: 40,
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
                height: 70,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (emailController.text.contains("@") &&
                          emailController.text.contains(".com")) {
                        // ignore: prefer_const_constructors
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const ResetView()));
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetView()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.black),
                    child: const Center(
                      child: Text(
                        "Reset Password",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
