import 'package:flutter/material.dart';
import 'package:x_and_o/siga.dart';
import 'package:x_and_o/x_and_o.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Widget _navigation = Container(
    child: Column(
      children: [
        Container(
          width: 250,
          height: 200,
          color: Colors.deepPurple,
          child: Image.asset("assets/image/nav.png"),
        ),
        FlatButton(
            onPressed: xo,
            child: Row(children: [
              Image.asset("assets/image/x_o.png",width: 20,height: 20,),  Text(" X and O", style: TextStyle(color: Colors.deepPurple))
            ])),
        FlatButton(
            onPressed: sig,
            child: Row(children: [
              Image.asset("assets/image/sega.png",width: 20,height: 20,),
              Text(
                " Siga",
                style: TextStyle(color: Colors.deepPurple),
              )
            ])),
        FlatButton(
            onPressed: null,
            child: Row(children: [
              Icon(
                Icons.help,
                color: Colors.deepPurple,
              ),
              Text(" help", style: TextStyle(color: Colors.deepPurple))
            ]))
      ],
    ),
    width: 250,
    color: Colors.white,
  );

  void xo() {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) => new StatefulBuilder(
            builder: (BuildContext context, setState) => x_o(_navigation))));
  }

  void sig() {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) => new StatefulBuilder(
            builder: (BuildContext context, setState) => siga(_navigation))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            Image.asset(
              "assets/image/game.png",
              width: 30,
              height: 30,
              //   color: Colors.deepPurple,
            ),
            Text("Games")
          ],
        )),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ Padding( padding: EdgeInsets.all(10.0)),
              FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: xo,
                  child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/image/x_o.png",
                            width: 200,
                            height: 150,
                          ),
                          Text("X and O")
                        ],
                      ))),
                      Padding( padding: EdgeInsets.all(10.0)),
              FlatButton(
                  onPressed: sig,
                  child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/image/sega.png",
                            width: 200,
                            height: 150,
                          ),
                          Text("Siga")
                        ],
                      ))),Padding( padding: EdgeInsets.all(10.0))
            ]))));
  }
}
