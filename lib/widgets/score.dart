import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_workshop/widgets/base_widget.dart';
import 'package:countup/countup.dart';

/// Use this widget for the plug and play solution.
class Score extends StatefulWidget {
  /// Score shows the speedometer rive animation.
  ///
  /// This widget needs an [initialValue], it determines the position of the needle.
  const Score({
    Key? key,
    required this.initValue,
  }) : super(key: key);

  final double initValue;

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  late SMIInput<double>? initValue;
  Artboard? _riveArtboard;

  @override
  void initState() {
    super.initState();
    initRive();
  }

  Future<void> initRive() async {
    final file =
        await RiveFile.asset('assets/animation/rive_workshop_speedo.riv');

    final artBoard = file.mainArtboard;

    var animationController =
        StateMachineController.fromArtboard(artBoard, 'speedometer');

    if (animationController != null) {
      artBoard.addController(animationController);
      initValue = animationController.findInput<double>('initValue');
      initValue!.value = widget.initValue;
    }
    setState(
      () => _riveArtboard = artBoard,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: _riveArtboard == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              alignment: Alignment.center,
              children: [
                Rive(
                  artboard: _riveArtboard!,
                  fit: BoxFit.fitWidth,
                ),
                Countup(
                  begin: 0,
                  end: widget.initValue,
                  duration: const Duration(seconds: 1),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
    );
  }
}
