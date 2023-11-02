import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Notifications",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Albert Jhon",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("30 minutes ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download1.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Alexander",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("1 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download2.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "David",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("1 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download3.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Sophia",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("2 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download4.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Henry",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("2 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download1.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Alexander",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("3 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download2.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "David",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("3 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Albert Jhon",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("4 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download3.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Sophia",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("5 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download4.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Henry",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("5 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Albert Jhon",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("6 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download1.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Alexander",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("6 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download2.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "David",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("7 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download3.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Sophia",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("7 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download4.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Henry",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("7 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Albert Jhon",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("8 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download1.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "Alexander",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("8 hours ago "))
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset("assets/download2.png"),
                  // ignore: prefer_const_constructors
                  title: Text(
                    "David",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Expanded(
                      child: Text(
                          "There are many variations of passages of Lorem Ipsum availabe")),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: const Text("8 hours ago "))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
