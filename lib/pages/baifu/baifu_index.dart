import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class BaifuIndex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('百辐'), backgroundColor: Color(0xFF4D81EF),),
      child: Center(
        child: Text('百辐'),
      ),
    );
  }
}