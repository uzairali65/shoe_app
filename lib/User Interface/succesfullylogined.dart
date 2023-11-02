import 'package:app/User%20Interface/home.dart';
import 'package:flutter/material.dart';

class Logined extends StatelessWidget {
  const Logined({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(
                  "assets/tick.png",
                ),
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Successful!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "You have successfully logined in our app",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HomeView()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.black),
                    child: const Center(
                      child: Text(
                        "Start Shopping",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
