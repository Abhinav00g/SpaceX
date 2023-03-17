import 'package:flutter/material.dart';
import 'package:space_x/class/class.dart';
import 'package:space_x/pages/widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Space X',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              CardWidget(
                box: ItemClass(
                  title: 'Rocket',
                  imagePath: 'image/rocket.png',
                  description: 'This is elon\'s rocket',
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: CardWidget(
                    box: ItemClass(
                      title: 'Space',
                      imagePath: 'image/space.png',
                      description: 'It is too calm here',
                    ),
                  )),
                  Expanded(
                      child: CardWidget(
                    box: ItemClass(
                      title: 'Travel',
                      imagePath: 'image/travel.png',
                      description: 'I lost my way to Mars',
                    ),
                  )),
                ],
              ),
              CardWidget(
                box: ItemClass(
                  title: 'Elon Musk',
                  imagePath: 'image/astro.png',
                  description: 'I\'m about to land on the Moon',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
