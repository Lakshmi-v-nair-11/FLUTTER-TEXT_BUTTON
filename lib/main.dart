import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  String _dispalyText = 'text will be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            color: Colors.yellow[100],
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type Something',
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      //get data
                      print(_textController.text);
                      setState(() {
                        _dispalyText = _textController.text;
                      });
                    },
                    child: Text('click here')),
                Text(_dispalyText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
