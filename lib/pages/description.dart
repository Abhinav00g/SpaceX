import 'package:flutter/material.dart';
import 'package:space_x/class/class.dart';
import 'package:space_x/constrain.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          widget.box.title,
        ),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(widget.box.title),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FilledButton(
                    onPressed: () {
                      fontSizeCustom = 12;
                      setState(() {});
                    },
                    child: Text('small'),
                  ),
                  FilledButton(
                    onPressed: () {
                      fontSizeCustom = 60;
                      setState(() {});
                    },
                    child: Text('Medium'),
                  ),
                  FilledButton(
                    onPressed: () {
                      fontSizeCustom = 130;
                      setState(() {});
                    },
                    child: Text('Large'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                      fontSize: fontSizeCustom, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                desc,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 5),
              Text(
                desc,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
