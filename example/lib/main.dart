import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:glo_insta_bug_reporter/glo_insta_bug_reporter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glo Bug Reporter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(
        title: 'Home',
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends GloReportableWidgetState<HomePage> {
  @override
  Widget buildRootWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Just shake\ndevice twice',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
