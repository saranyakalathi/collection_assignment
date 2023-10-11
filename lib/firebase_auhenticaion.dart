import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: 'user@example.com',
        password: 'password',
      );
      // Authentication successful, navigate to the next screen
    } catch (e) {
      // Handle authentication errors
      print('Authentication failed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase Authentication Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _signInWithEmailAndPassword();
            },
            child: Text('Sign In with Email & Password'),
          ),
        ),
      ),
    );
  }
}
