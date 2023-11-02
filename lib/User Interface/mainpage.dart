import 'package:app/User%20Interface/loginpage.dart';
import 'package:app/User%20Interface/signinpage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/style.png"),
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginView()));
                      
                    },
                    style: ElevatedButton.styleFrom(shape: const StadiumBorder(),backgroundColor: Colors.black),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
                width: double.infinity
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
