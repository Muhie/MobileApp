// ignore_for_file: unnecessary_const

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
      appBar: AppBar(title: const Text("Muhie's Exceptional Mobile App! ")), 
      body: Center(child: ElevatedButton (
        
        style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
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
    responseText = await rootBundle.loadString('textFiles/SDLC.txt');
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
        const Padding(padding: EdgeInsets.all(20),
          child: Text("Welcome To My Absolutely Crazy App!"),
        ),
        Padding(padding: EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            onPressed: (){
              Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => const InfoPage1()
                  )
            );
            },
          child: const Text("What are System Development Lifecycles?")
          // dont forget to add attributes here later 
          ,)),
          Padding(padding: EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            onPressed: (){
            Navigator.of(context)
            .push(
              MaterialPageRoute(
                builder: (context) => const InfoPage2()
              )
            );
            },
          child: const Text("          What exactly is the Agile Model?          ")
          // dont forget to add attributes here later
          ,)),
          Padding(padding: EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            onPressed: (){
            Navigator.of(context)
            .push(
              MaterialPageRoute(
                builder: (context) => const InfoPage3()
              )
            );
            },
          child: const Text("    What exactly is the Waterfall Model?    ")
          // dont forget to add attributes here later
          ,)),
          Padding(padding: EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            onPressed: (){
            Navigator.of(context)
            .push(
              MaterialPageRoute(
                builder: (context) => const InfoPage4()
              )
            );
            },
          child: const Text("        What exactly is the Spiral Model?        ")
          // dont forget to add attributes here later
          ,)),
                    Padding(padding: EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            onPressed: (){
            Navigator.of(context)
            .push(
              MaterialPageRoute(
                builder: (context) => const InfoPage5()
              )
            );
            },
          child: const Text("                        About This App!                        ")
          // dont forget to add attributes here later
          ,)),

        ],
      )),
    );
  }
}
class InfoPage1 extends StatefulWidget {
  const InfoPage1({ Key? key }) : super(key: key);

  @override
  _InfoPage1State createState() => _InfoPage1State();
}

class _InfoPage1State extends State<InfoPage1> {
  String data = '';
  String data2 = '';
  fetchFileData() async{
    String responseText;
    String responseText2;
    responseText = await rootBundle.loadString('textFiles/SDLC.txt');
    responseText2 = await rootBundle.loadString('textFiles/SDLC2.txt');
    setState(() {
      data = responseText;
      data2 = responseText2;
  });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final textscale = MediaQuery.of(context).textScaleFactor;
        return Scaffold(
    appBar: AppBar(
    title: const Text("Muhie's Exceptional Mobile App!")),
    body: SingleChildScrollView(child: Column(
      children: [
         Text(data,style: TextStyle(fontSize: 20.0*textscale)),
          const Image(
        image: AssetImage('assets/SDLC-Models.jpg')),
        Text(data2,style: TextStyle(fontSize: 20.0*textscale)),
      ]
      
    )
    )
    );
  }
}
//start
class InfoPage2 extends StatefulWidget {
  const InfoPage2({ Key? key }) : super(key: key);

  @override
  _InfoPage2State createState() => _InfoPage2State();
}

class _InfoPage2State extends State<InfoPage2> {
  String data = '';
  String data2 = '';
  fetchFileData() async{
    String responseText;
    String responseText2;
    responseText = await rootBundle.loadString('textFiles/AgileMethod.txt');
    responseText2 = await rootBundle.loadString('textFiles/AgileMethood2.txt');
    setState(() {
      data = responseText;
      data2 = responseText2;
  });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final textscale = MediaQuery.of(context).textScaleFactor;
        return Scaffold(
    appBar: AppBar(
    title: const Text("Muhie's Exceptional Mobile App!")),
    body: SingleChildScrollView(child: Column(
      children: [
         Text(data,style: TextStyle(fontSize: 20.0*textscale)),
          const Image(
        image: AssetImage('assets/Adg.jpg')),
        Text(data2,style: TextStyle(fontSize: 20.0*textscale)),
      ]
      
    )
    )
    );
  }
}
class InfoPage3 extends StatefulWidget {
  const InfoPage3({ Key? key }) : super(key: key);

  @override
  _InfoPage3State createState() => _InfoPage3State();
}

class _InfoPage3State extends State<InfoPage3> {
  String data = '';
  String data2 = '';
  fetchFileData() async{
    String responseText;
    String responseText2;
    responseText = await rootBundle.loadString('textFiles/WaterFall.txt');
    responseText2 = await rootBundle.loadString('textFiles/WaterFall2.txt');
    setState(() {
      data = responseText;
      data2 = responseText2;
  });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final textscale = MediaQuery.of(context).textScaleFactor;
        return Scaffold(
    appBar: AppBar(
    title: const Text("Muhie's Exceptional Mobile App!")),
    body: SingleChildScrollView(child: Column(
      children: [
         Text(data,style: TextStyle(fontSize: 20.0*textscale)),
          const Image(
        image: AssetImage('assets/Waterfallimg.jpg')),
          Text(data2,style: TextStyle(fontSize: 20.0*textscale))
      ]
      
    )
    )
    );
  }
}
//stop
class InfoPage4 extends StatefulWidget {
  const InfoPage4({ Key? key }) : super(key: key);

  @override
  _InfoPage4State createState() => _InfoPage4State();
}

class _InfoPage4State extends State<InfoPage4> {
  String data = '';
  String data2 = '';
  fetchFileData() async{
    String responseText;
    String responseText2;
    responseText = await rootBundle.loadString('textFiles/Spiral.txt');
    responseText2 = await rootBundle.loadString('textFiles/Spiral2.txt');
    setState(() {
      data = responseText;
      data2 = responseText2;
  });
  }
  @override
  void initState() {
    fetchFileData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final textscale = MediaQuery.of(context).textScaleFactor;
        return Scaffold(
    appBar: AppBar(
    title: const Text("Muhie's Exceptional Mobile App!")),
    body: SingleChildScrollView(child: Align(alignment: Alignment.topLeft, child: Column(
      children: [
         Text(data,style: TextStyle(fontSize: 20.0*textscale)),
          const Image(
          image: AssetImage('assets/spiralmodelimg.jpg')),
        Text(data2,style: TextStyle(fontSize: 20.0*textscale))
      ]
      

      
    )
    )
    )
    );
  }
}
class InfoPage5 extends StatefulWidget {
  const InfoPage5({ Key? key }) : super(key: key);

  @override
  _InfoPage5State createState() => _InfoPage5State();
}

class _InfoPage5State extends State<InfoPage5> {
  String data = '';
  fetchFileData() async{
    String responseText;
    responseText = await rootBundle.loadString('textFiles/About.txt');
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
    final textscale = MediaQuery.of(context).textScaleFactor;
        return Scaffold(
    appBar: AppBar(
    title: const Text("Muhie's Exceptional Mobile App!")),
    body: SingleChildScrollView(child: Align(alignment: Alignment.topLeft, child: Column(
      children: [
         Text(data,style: TextStyle(fontSize: 20.0*textscale)),
      ]
      

      
    )
    )
    )
    );
  }
}