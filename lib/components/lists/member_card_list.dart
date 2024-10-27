
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MemberCardList extends StatefulWidget {
  const MemberCardList({super.key});

  @override
  _MemberCardListState createState() => _MemberCardListState();
}

class _MemberCardListState extends State<MemberCardList> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
        autoPlay: true,
        viewportFraction: 0.65,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 4000),
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: 250,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: const BorderRadius.all(Radius.circular(7)),
                ),
                child: Center(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter',
                          width: 200,
                          height: 200,
                        ),
                        Text(
                          'test$i',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ));
          },
        );
      }).toList(),
    );
  }
}
