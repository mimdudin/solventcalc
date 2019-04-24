import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import './my_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'http://solventcalc.com',
      appBar: new AppBar(
        backgroundColor: Color(0xff012348),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(LineAwesomeIcons.home),
            SizedBox(width: 10),
            Container(
                margin: EdgeInsets.only(top: 4), child: Text('SolventCalc'))
          ],
        ),
      ),
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        child: const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff012348)),
          ),
        ),
      ),
    );
  }
}
