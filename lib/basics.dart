import 'package:flutter/material.dart';

class Basics extends StatefulWidget {
  const Basics({super.key});
  //this method is used to create and initialize the state object
  @override
  State<Basics> createState() => _BasicsState();
}

class _BasicsState extends State<Basics> {
  String _message = 'will be changed';
  //TextEditingController=>to edit text in the textfield.
  final TextEditingController _controller =
      TextEditingController(text: 'default');
  //initState Method=>This method is called when the State object is created.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message = 'initialized';
    _controller.addListener(() {
      setState(() {
        _message = _controller.text;
        print('Changed text: $_message');
      });
    });
  }

  //didChangeDependencies()=>This method is called when the dependencies of the widget change.
  // It can be called multiple times
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  //didUpdateWidget=> This method is called when the widget is updated with new properties.
  @override
  void didUpdateWidget(covariant Basics oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  //dispose=>This method is called when the widget is removed from the widget tree.
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //build(BuildContext context)=>This method is called whenever the widget needs to be built or rebuilt.
  @override
  Widget build(BuildContext context) {
    //Build widgets in the widget tree
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basics:'),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Center(child: Text(_message)),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question1: c)createView()....not present'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question2: d)addListener'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question3: B) ChangeNotifier'),
            ), //to notify listeners when the internal state of an object changes.
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question4: B) GoogleMap'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question5: A) firebase_auth'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question6: D) ImagePicker'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question7: C) WorkManager'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question8: A) ImmutableWidget'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question9: C) Build widgets in the widget tree'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question10: A) fitWidth'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question11: C) Hero'),
            ),
            
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question12: D) Redux'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question14: C) Sinks'),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text('Question15: A) FutureBuilder'),
            ),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
              ),
            ),
            const Image(
              image: AssetImage('assets/quiz-logo.png'),
              fit: BoxFit.cover, // Change this to the desired BoxFit value
            ),
          ],
        ),
      ),
    );
  }
}
