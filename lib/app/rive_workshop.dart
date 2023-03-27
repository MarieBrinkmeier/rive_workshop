import 'package:flutter/material.dart';
import 'package:rive_workshop/widgets/home.dart';

class RiveWorkshop extends StatelessWidget {
  const RiveWorkshop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Rive Workshop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Colors.grey,
              background: const Color(0xFF707070),
            ),
      ),
      home: const Home(title: 'Flutter Rive Workshop'),
    );
  }
}


