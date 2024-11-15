import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('My Profile'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_outlined, size: 30)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined, size: 30)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined, size: 30)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileItem(
              icon: Icons.icecream_outlined,
              text: 'Ice cream is very delicious right?',
            ),
            ProfileItem(
              icon: Icons.code_outlined,
              text: 'Programming is not boring if you love it',
            ),
            ProfileItem(
              icon: Icons.egg_outlined,
              text: '',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ProfileItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.purple[50],
            radius: 70,
            child: Icon(icon, color: Colors.deepPurple, size: 60),
          ),
          SizedBox(height: 15),
          if (text.isNotEmpty)
            Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}
