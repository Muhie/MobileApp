import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    

  ));
}

class HomePage extends StatefulWidget {
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  String data = '';
  fetchFileData() async{
    String responseText;
    responseText = await rootBundle.loadString('textFiles/textDemo.txt');
    setState(() {
      data = responseText;
    });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muhies amazing work'),
      ),
      body: (
        Text(data)
        ),   
    );
  }
}