import 'package:fiixcondemo/screens/posts/post1.dart';
import 'package:fiixcondemo/screens/posts/post2.dart';
import 'package:fiixcondemo/screens/posts/post3.dart';
import 'package:fiixcondemo/screens/posts/post4.dart';
import 'package:fiixcondemo/screens/posts/post5.dart';
import 'package:flutter/material.dart';

class UserhomeScreen extends StatelessWidget {
  final _controller = PageController(initialPage: 0);

  UserhomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          Post1(),
          Post2(),
          Post3(),
          Post4(),
          Post5(),
        ],
      ),
    );
  }
}
