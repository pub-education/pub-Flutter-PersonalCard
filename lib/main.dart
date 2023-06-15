import 'package:flutter/material.dart';

import 'components/contact_section.dart';
import 'components/name_section.dart';

void main() => runApp(const Ass1());

class Ass1 extends StatelessWidget {
  const Ass1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Personal card',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              fontSize: 26.0,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  'images/Chris.jpg',
                  fit: BoxFit.scaleDown,
                ),
              ),
              Center(child: nameSection),
              Container(
                margin: const EdgeInsets.only(bottom: 60.0),
                child: contactSection(Colors.black45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
