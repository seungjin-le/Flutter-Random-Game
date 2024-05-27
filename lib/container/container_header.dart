import 'package:flutter/material.dart';

class Header {
  final String avatarUrl;
  final String title;

  const Header({
    required this.avatarUrl,
    required this.title,
  });
}

class HeaderContainer extends StatelessWidget {
  final Header header;

  const HeaderContainer({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Flexible(flex: 1, fit: FlexFit.tight, child: Text('')),
        Flexible(flex: 1, fit: FlexFit.tight, child: Text(header.title)),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
              width: 60,
              height: 60,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                header.avatarUrl,
              )),
        ),
      ],
    );
  }
}
