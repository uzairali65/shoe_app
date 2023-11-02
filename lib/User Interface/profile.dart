import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Profile",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 18,
                ),
                Cardproffile(),
                settingscard(),
                const SizedBox(
                  height: 15,
                ),
                subsettingscard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Cardproffile() {
  return SizedBox(
    height: 100,
    width: double.infinity,
    child: Center(
      child: Card(
        color: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const ListTile(
            title: Text("Albert Jhon"),
            subtitle: Text("Albertjhon123@gmail.com"),
            leading: CircleAvatar(
              foregroundImage: AssetImage('assets/download.png'),
            )),
      ),
    ),
  );
}

settingscard() {
  return SizedBox(
    height: 300,
    width: double.infinity,
    child: Center(
      child: Card(
        color: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Column(
          children: [
            ListTile(
              title: Text("Personal Details"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("My Order"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.shopping_bag),
            ),
            ListTile(
              title: Text("My Favourites"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.favorite),
            ),
            ListTile(
              title: Text("Shipping Address"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.local_shipping),
            ),
            ListTile(
              title: Text("My Card"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.wallet),
            ),
            ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    ),
  );
}

subsettingscard() {
  return SizedBox(
    height: 300,
    width: double.infinity,
    child: Center(
      child: Card(
        color: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Column(
          children: [
            ListTile(
              title: Text("FAQs"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.fmd_bad),
            ),
            ListTile(
              title: Text("Privacy Policy"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.security),
            ),
            ListTile(
              title: Text("Notifications"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.notifications),
            ),
            ListTile(
              title: Text("Edit profile info"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.edit),
            ),
            ListTile(
              title: Text("Location"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.location_on),
            ),
            ListTile(
              title: Text("Blocking"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: Icon(Icons.block),
            ),
          ],
        ),
      ),
    ),
  );
}
