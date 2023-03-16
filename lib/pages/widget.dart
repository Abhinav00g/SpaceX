import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p1/class/class.dart';
import 'package:p1/pages/description.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DescriptionPage(
            box: box,
          ),
        ));
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(box.imagePath),
              Text(
                box.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(box.description)
            ],
          ),
        ),
      ),
    );
  }
}
