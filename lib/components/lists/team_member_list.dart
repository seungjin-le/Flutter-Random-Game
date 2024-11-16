import 'package:flutter/material.dart';
import 'package:random_game/components/lists/member_list_item.dart';
import 'package:random_game/model/member/model_team_members.dart';

class TeamMemberListItem extends StatefulWidget {
  final ModelTeamMembers team;

  const TeamMemberListItem(this.team, {super.key});

  @override
  _TeamMemberListItemState createState() => _TeamMemberListItemState();
}

class _TeamMemberListItemState extends State<TeamMemberListItem> with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _controller;
  late Animation<double> _heightFactor;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    _heightFactor = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _toggleExpand,
          child: Container(
            color: Theme.of(context).cardColor,
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.team.teamName ?? '0 팀',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        ClipRect(
          child: Align(
            heightFactor: _heightFactor.value,
            child: Column(
              children: widget.team.members?.map((member) => MemberListItem(member)).toList() ?? [],
            ),
          ),
        ),
      ],
    );
  }
}
