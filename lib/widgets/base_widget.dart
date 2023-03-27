import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({required this.child, this.title, Key? key})
      : super(key: key);
  final String? title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF707070),
      appBar: AppBar(
        title: Text(title ?? ''),
      ),
      body: child,
    );
  }
}
