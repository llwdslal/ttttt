import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bat100appwap/pages/baifu/baifu_index.dart';
import 'package:bat100appwap/pages/jiaoyi/jiaoyi_index.dart';
import 'package:bat100appwap/pages/fuxin/fuxin_index.dart';
import 'package:bat100appwap/pages/bangong/bangong_index.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HomePageIOS([BaifuIndex(),JiaoyiIndex(),FuxinIndex(),BanGongIndex()]),
    );
  }

}


class HomePageIOS extends StatelessWidget{

  final List<Widget> baifuPage;

  HomePageIOS(this.baifuPage);


  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Image.asset('assets/images/bottom_tab_bar/baifu.png'),title: Text('百辐'),activeIcon: Image.asset('assets/images/bottom_tab_bar/baifu_selected.png')),
          BottomNavigationBarItem(icon: Image.asset('assets/images/bottom_tab_bar/jiaoyi.png'),title: Text('交易'),activeIcon: Image.asset('assets/images/bottom_tab_bar/jiaoyi_selected.png')),
          BottomNavigationBarItem(icon: Image.asset('assets/images/bottom_tab_bar/fuxin.png'),title: Text('福信'),activeIcon: Image.asset('assets/images/bottom_tab_bar/fuxin_selected.png')),
          BottomNavigationBarItem(icon: Image.asset('assets/images/bottom_tab_bar/bangong.png'),title: Text('办公'),activeIcon: Image.asset('assets/images/bottom_tab_bar/bangong_selected.png')),

        ],
      ),
      tabBuilder: (BuildContext context,int index){
        return CupertinoTabView(
          builder: (BuildContext context){
            return this.baifuPage[index];
          },
        );
      },
    );
  }



}
