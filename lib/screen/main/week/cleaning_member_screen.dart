import 'package:flutter/material.dart';
import 'package:random_game/components/lists/member_card_list.dart';

class CleaningMemberScreen extends StatelessWidget {
  const CleaningMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
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
