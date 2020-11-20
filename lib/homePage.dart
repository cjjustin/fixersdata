import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'infoPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work List'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Profile',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_pin),
            tooltip: 'Profile',
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => InfoPage()),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: Center(
                child: Text("WELCOME TO WHEELERS AND FIXERS"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
