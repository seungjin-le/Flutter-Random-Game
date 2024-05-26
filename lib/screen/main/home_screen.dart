import 'package:flutter/material.dart';
import 'package:random_game/components/lists/member_list_item.dart';
import 'package:random_game/assets/testdata.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final testData = TestData().members;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: testData.map((member) => MemberListItem(member)).toList(),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text('이번주 당번'),
                  ],
                ))),
            Flexible(
                flex: 1,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Icon(Icons.search),
                    Text('Search'),
                  ],
                ))),
            Flexible(
                flex: 1,
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Icon(Icons.person),
                    Text('Profiasdfasle'),
                  ],
                ))),
          ],
        ),
      ),
    );
  }
}
