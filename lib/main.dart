import 'package:flutter/material.dart';
import './dialog1.dart';
import './dialog2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Dialog Box -1'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      child: AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        contentPadding: EdgeInsets.all(0.0),
                        content: SingleChildScrollView(
                          child: Dialog1(),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('Dialog Box -2'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      child: SingleChildScrollView(
                        child: AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          contentPadding: EdgeInsets.all(0.0),
                          content: Dialog2(),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
