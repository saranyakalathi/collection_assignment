import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return SecondScreen();
              },
            ),
          );
        },
        child: Hero(
          tag: 'avatarTag', // Use the same tag in both screens
          child: Image.asset('assets/quiz-logo.png'),
          transitionOnUserGestures: true,
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Hero(
          tag: 'avatarTag', // Use the same tag in both screens
          child: Container(
            color: Colors.amberAccent,
            height: 100,
            width: 100,
          )
        ),
      ),
    );
  }
}
