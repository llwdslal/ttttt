import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class JiaoyiIndex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('交易'), backgroundColor: Color.fromARGB(255, 77, 129, 239),),
      child: Center(
        child: Text('交易'),
      ),
    );
  }
}