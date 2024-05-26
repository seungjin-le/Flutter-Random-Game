import 'package:flutter/material.dart';

class Header {
  final String name;
  final String email;
  final String avatarUrl;

  const Header({
    required this.name,
    required this.email,
    required this.avatarUrl,
  });
}

class HeaderContainer extends StatelessWidget {
  final Header header;

  const HeaderContainer({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(header.name),
        Text(header.email),
      ],
    );
  }
}
