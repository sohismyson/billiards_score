import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BILLIARDS SCORE BOARD',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'BILLIARDS SCORE BOARD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _homePlayerCounter = 0;
  int _guestPlayerCounter = 0;

  void _homePlayerIncrementCounter() {
    setState(() {
      _homePlayerCounter++;
    });
  }

  void _guestPlayerIncrementCounter() {
    setState(() {
      _guestPlayerCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: _homePlayerIncrementCounter,
              child: Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '$_homePlayerCounter',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                color: Color(0xFF3C3C3C),
                width: 48.0,
                height: 48.0,
              ),
            ),
            GestureDetector(
              onTap: _guestPlayerIncrementCounter,
              child: Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '$_guestPlayerCounter',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                color: Color(0xFF3C3C3C),
                width: 48.0,
                height: 48.0,
              ),
            ),
          ],
        ),
      ),
/*       floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
 */
    );
  }
}
