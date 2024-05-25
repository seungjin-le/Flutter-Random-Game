import 'package:flutter/material.dart';

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

class Member {
  final String name;
  final String email;
  final String avatarUrl;

  const Member({
    required this.name,
    required this.email,
    required this.avatarUrl,
  });
}
