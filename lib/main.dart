import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MaterialApp(
        title: "Home",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
            centerTitle: true,
          ),
          body: Center(
              child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => Details()),
              );
            },
            child: Text("Goto details page"),
          )),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("This is the detail page"),
            RaisedButton(
              color: Colors.blue,
              child: Text("Back to home"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
