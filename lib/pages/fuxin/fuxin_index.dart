import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class FuxinIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: FuxinTabs());
  }
}

class FuxinTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FuxinTabsState();
  }
}

class FuxinTabsState extends State<FuxinTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Tab> _tabList;

  @override
  void initState() {
    super.initState();
    _tabList = [Tab(text: '福信'), Tab(text: '通讯录')];
    _tabController = TabController(length: _tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF4D81EF),
          bottom: TabBar(
              isScrollable: true,
              controller: _tabController,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              unselectedLabelColor: Color(0xffA5BFF6),
              labelStyle: TextStyle(fontSize: 17.0),
              tabs: _tabList),
//          title: Center(
//            child: TabBar(
//                isScrollable: true,
//                controller: _tabController,
//                labelColor: Colors.white,
//                indicatorColor: Colors.white,
//                unselectedLabelColor: Color(0xffA5BFF6),
//                labelStyle: TextStyle(fontSize: 17.0),
//                tabs: _tabList),
//          )
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Center(child: Text('11111')),
          Center(child: Text('222222')),
        ],
      ),
    );
  }
}
