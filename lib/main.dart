import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BILLIARDS SCORE BOARD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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

  void _scoreReseter() {
    setState(() {
      _homePlayerCounter = 0;
      _guestPlayerCounter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xFF000000),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: GestureDetector(
                onTap: _homePlayerCounter != 7
                    ? _homePlayerIncrementCounter
                    : () {},
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
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: GestureDetector(
                onTap: _guestPlayerCounter != 7
                    ? _guestPlayerIncrementCounter
                    : () {},
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
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 50.0),
        child: FloatingActionButton.extended(
          onPressed: _scoreReseter,
          label: Text('RESET COUNT'),
          icon: Icon(Icons.clear),
          backgroundColor: Color(0xFF696969),
          elevation: 0.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
