import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MemberCardList extends StatefulWidget {
  const MemberCardList({super.key});

  @override
  _MemberCardListState createState() => _MemberCardListState();
}

class _MemberCardListState extends State<MemberCardList> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 350.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Image.network(
                        'https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter',
                        width: 300,
                        height: 300,
                      ),
                      Text('test$i'),
                    ],
                  ),
                ));
          },
        );
      }).toList(),
    );
  }
}
