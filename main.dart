import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Muhie's exceptional mobile app",
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.system, 
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      home: const Page1(),
      
    );
  }
}
class Page1 extends StatelessWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Muhie's Exceptional Mobile App!")), 
      body: Center(child: ElevatedButton (
        onPressed: (){
          Navigator.of(context)
          .push(
            MaterialPageRoute(
              builder: (context) => const Page2()
            )
          );
        },

        child: const Text("Welcome, Click Here!"),
      )),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
        title: const Text("Muhie's Fantastic Menu!")
      ),
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        const Text("Welcome to my absolutely crazy app"),
          ElevatedButton(onPressed: (){
            Navigator.of(context)
            .pop();
          },
          child: const Text("Stuff about Development life cycles and stuff")
          // dont forget to add attributes here later 
          ,),
          ElevatedButton(onPressed: (){
            Navigator.of(context)
            .pop();
          },
          child: const Text("Even More Stuff about Development life cycles and stuff")
          // dont forget to add attributes here later
          ,),
          ElevatedButton(onPressed: (){
            Navigator.of(context)
            .pop();
          },
          child: const Text("Even Even More Stuff about Development life cycles and stuff")
          // dont forget to add attributes here later
          ,),
          ElevatedButton(onPressed: (){
            Navigator.of(context)
            .pop();
          },
          child: const Text("Even Even Even More Stuff about Development life cycles and stuff")
          // dont forget to add attributes here later
          ,),
          ElevatedButton(onPressed: (){
            Navigator.of(context)
            .pop();
          },
          child: const Text("Double Even Even Even More Stuff about Development life cycles and stuff")
          // dont forget to add attributes here later
          ,),                         
        ],
      )),
    );
  }
}
