import 'package:flutter/cupertino.dart';

class App extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: ),
          BottomNavigationBarItem(),
          BottomNavigationBarItem(),
          BottomNavigationBarItem(),
        ],
      ),
      tabBuilder: (BuildContext context,int index){
        return CupertinoTabView(
          builder: (BuildContext context){
            return CupertinoPageScaffold(
              child: Center(
                child: Text('page $index'),
              ),
            );
          },
        );
      },
    );
  }

}