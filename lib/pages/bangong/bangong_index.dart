import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class BanGongIndex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('办公'), backgroundColor: Color.fromARGB(255, 77, 129, 239),),
      child: Center(
        child: Text('办公'),
      ),
    );
  }
}