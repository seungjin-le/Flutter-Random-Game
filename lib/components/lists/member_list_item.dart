import 'package:flutter/material.dart';
import 'package:random_game/model/member/model_member.dart';

class MemberListItem extends StatelessWidget {
  final Member member;

  const MemberListItem(this.member, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(member.avatarUrl),
      ),
      title: Text(member.name),
      subtitle: Text(member.email),
    );
  }
}
