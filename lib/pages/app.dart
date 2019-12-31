import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bat100appwap/pages/baifu/baifu_index.dart';
import 'package:bat100appwap/pages/jiaoyi/jiaoyi_index.dart';
import 'package:bat100appwap/pages/fuxin/fuxin_index.dart';
import 'package:bat100appwap/pages/bangong/bangong_index.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
          HomePage([BaifuIndex(), JiaoyiIndex(), FuxinIndex(), BanGongIndex()]),
    );
  }
}

class HomePage extends StatefulWidget {
  final List<Widget> homePages;

  HomePage(this.homePages);

  @override
  State<StatefulWidget> createState() {
    return HomePageState(homePages);
  }
}

class HomePageState extends State<HomePage>{
  final List<Widget> homePages;
  int _selectedIndex = 0;

  HomePageState(this.homePages);


  void _onItemTapped(int index){
    if(index != _selectedIndex){
      setState(() {
        _selectedIndex = index;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homePages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          getBarItem('百辐', 'baifu'),
          getBarItem('交易', 'jiaoyi'),
          getBarItem('福信', 'fuxin'),
          getBarItem('办公', 'bangong'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFF4D81EF),
      ),
    );
  }

  BottomNavigationBarItem getBarItem(String title,String imgName){
    return BottomNavigationBarItem(
        icon: Image.asset('assets/images/bottom_tab_bar/$imgName.png'),
        title: Text(title),
        activeIcon: Image.asset('assets/images/bottom_tab_bar/${imgName}_selected.png')
    );
  }

}

class HomePageIOS extends StatelessWidget {
  final List<Widget> homePages;

  HomePageIOS(this.homePages);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          getBarItem('百辐', 'baifu'),
          getBarItem('交易', 'jiaoyi'),
          getBarItem('福信', 'fuxin'),
          getBarItem('办公', 'bangong'),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return this.homePages[index];
          },
        );
      },
    );
  }

  BottomNavigationBarItem getBarItem(String title,String imgName){
    return BottomNavigationBarItem(
        icon: Image.asset('assets/images/bottom_tab_bar/$imgName.png'),
        title: Text(title),
        activeIcon: Image.asset('assets/images/bottom_tab_bar/${imgName}_selected.png')
    );
  }
}
