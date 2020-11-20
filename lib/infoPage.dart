import 'package:fixersdata/saveData.dart';
import 'package:flutter/material.dart';
import 'authservice.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  TextEditingController name = TextEditingController();
  TextEditingController gender = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            TextField(
              controller: name,
              decoration: InputDecoration(hintText: "enter your name"),
            ),
            TextField(
              controller: gender,
              decoration: InputDecoration(hintText: "enter your gender"),
            ),
            RaisedButton(
              onPressed: () async {
                userProfile(name.text, gender.text);

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => InfoPage()));
              },
              child: Text("SAVE"),
            ),
            RaisedButton(
              child: Text('Signout'),
              onPressed: () {
                Navigator.pop(context);
                AuthService().signOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
