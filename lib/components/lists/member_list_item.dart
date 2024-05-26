import 'package:flutter/material.dart';
import 'package:random_game/model/member/model_team_members.dart';

class MemberListItem extends StatelessWidget {
  final TeamMember member;

  const MemberListItem(this.member, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: (member.avatarUrl != null &&
              Uri.tryParse(member.avatarUrl!)?.hasAbsolutePath == true)
          ? CircleAvatar(
              backgroundImage: NetworkImage(member.avatarUrl!),
            )
          : const CircleAvatar(child: Icon(Icons.person)),
      title: Text(member.name ?? 'Unknown Name'),
      subtitle: Text(member.email ?? 'Unknown Email'),
    );
  }
}
