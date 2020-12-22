import 'package:flutter/material.dart';
import 'package:flutter_routing/about.dart';
import 'package:flutter_routing/contact.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => About(),
                        settings: RouteSettings(
                          arguments: 'This is data from Home',
                        )));
              },
              child: Text('Go About'),
              color: Colors.teal,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Contact()));
              },
              child: Text('Go Contact'),
              color: Colors.orange,
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
              child: Text('Go Setting'),
              color: Colors.purple,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
