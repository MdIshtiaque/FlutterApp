import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscr(),
    );
  }
}

class splashscr extends StatefulWidget {
  const splashscr({Key? key}) : super(key: key);

  @override
  _splashscrState createState() => _splashscrState();
}

class _splashscrState extends State<splashscr> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      //globalBackgroundColor: Color.fromRGBO(89, 205, 255, 50),
        pages: [
          PageViewModel(title: "Welcome", body: "Go take a fast look on the App", image:Center(child: Image.asset("images/fast.png", width: 350,height: 500,),) ),
          PageViewModel(title: "1000+ Tips", body: "Find your regular tips here", image:Center(child: Image.asset("images/tips.png", width: 350,height: 500,),) ),
          PageViewModel(title: "Get knowledge", body: "Be Patient, Thank You", image:Center(child: Image.asset("images/books.png", width: 350,height: 500,),) )
        ],
        onDone: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => homescr()));
        },
        showSkipButton: true,
        skip: const Text("Skip"),
        done:
            const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)));
  }
}
