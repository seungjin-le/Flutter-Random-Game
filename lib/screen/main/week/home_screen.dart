import 'package:flutter/material.dart';
import 'package:random_game/assets/test_tean_data.dart';
import 'package:random_game/components/lists/member_card_list.dart';
import 'package:random_game/components/lists/team_member_list.dart';
import 'package:random_game/container/container_header.dart';

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
    final testTeamData = TestTeamData().teamMembers;
    return Scaffold(
      appBar: AppBar(
        title: const HeaderContainer(
          header: Header(
              avatarUrl:
                  'https://i.namu.wiki/i/v7bQYd4nrN4wpZ5R2EJfgZlf2e0-9ImJ8Yw9w2TpkzUr8nqHwtMqfe3lze-2DyUUIMcAAs3Xq_aybGpPvoFBGQ.webp',
              title: '금주 식사당번'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const MemberCardList(),
            const SizedBox(height: 20),
            ...testTeamData.map((team) => TeamMemberListItem(team)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
// ...testData.map((member) => MemberListItem(member)).toList()