import 'package:flutter/material.dart';
import 'package:rive_workshop/widgets/base_widget.dart';
import 'package:rive_workshop/widgets/score.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var value = 50.0;

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      title: widget.title,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                value.toInt().toString(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Slider(
                value: value,
                onChanged: (newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
                min: 0,
                max: 100,
              ),
              const SizedBox(
                height: 40,
              ),
              MaterialButton(
                elevation: 10,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Score(
                        initValue:  value.toInt().toDouble(),
                      ),
                    ),
                  );
                },
                child: const Text(
                  'show score',
                  style: TextStyle(
                    color: Color(0xFF202020),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
