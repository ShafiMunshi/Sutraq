import 'package:flutter/material.dart';
import 'package:sutraq/UI/route/route.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk2.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk3.dart';
import 'package:sutraq/UI/view/pages/walkthrough/walk_1.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        Walk1(),
        Walk2(),
        Walk3(),
      ],
    );
  }
}
