import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Simulated asynchronous function to fetch user data
Future<String> fetchUserData() async {
  await Future.delayed(const Duration(seconds: 2)); // Simulating a 2-second delay
  return 'Saranya'; // Simulated user data
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FutureBuilder Example'),
        ),
        body: Center(
          child: FutureBuilder<String>(
            // The future to await (simulated user data fetch)
            future: fetchUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // While data is loading
                return const LinearProgressIndicator();
              } else if (snapshot.hasError) {
                // If an error occurs
                return Text('Error: ${snapshot.error}');
              } else {
                // Data loaded successfully
                return Text('User Name: ${snapshot.data}');
              }
            },
          ),
        ),
      ),
    );
  }
}
