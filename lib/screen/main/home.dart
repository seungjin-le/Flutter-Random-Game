import 'package:flutter/material.dart';
import 'package:random_game/assets/testdata.dart';
import 'package:random_game/components/lists/member_list_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final testData = TestData();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MemberListItem(Member(
                name: 'ㅁㄴㅇ',
                email: 'asdasf  ',
                avatarUrl:
                    'https://cdn.itdaily.kr/news/photo/202312/218699_223437_5245.png'))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
