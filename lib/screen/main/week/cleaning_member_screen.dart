import 'package:flutter/material.dart';
import 'package:random_game/components/lists/member_card_list.dart';
import 'package:random_game/container/container_header.dart';

class CleaningMemberScreen extends StatelessWidget {
  const CleaningMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeaderContainer(
          header: Header(
              avatarUrl:
                  'https://i.namu.wiki/i/v7bQYd4nrN4wpZ5R2EJfgZlf2e0-9ImJ8Yw9w2TpkzUr8nqHwtMqfe3lze-2DyUUIMcAAs3Xq_aybGpPvoFBGQ.webp',
              title: '금주 청소당번'),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            MemberCardList(),
            SizedBox(height: 20),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
