// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';
// import 'package:rive_workshop/widgets/base_widget.dart';
// import 'package:countup/countup.dart';
//
// /// Your work is needed ;)
// class YourScore extends StatefulWidget {
//   /// YourScore should show the speedometer rive animation.
//   ///
//   /// This widget needs an [initialValue], it determines the position of the needle.
//   const YourScore({
//     Key? key,
//     required this.initValue,
//   }) : super(key: key);
//
//   final double initValue;
//
//   @override
//   State<YourScore> createState() => _YourScoreState();
// }
//
// class _YourScoreState extends State<YourScore> {
//   // TODO declare the input with the name from the input of the state machine (initValue)
//   // Use the SMIInput<T> class for rive inputs.
//   // (for more details see https://pub.dev/documentation/rive/latest/rive/SMIInput-class.html)
//
//   //TODO declare the artboard
//   // Use the Artboard class for the rive artboard.
//   //_riveArtboard;
//   @override
//   void initState() {
//     super.initState();
//     initRive();
//   }
//
//   Future<void> initRive() async {
//     //TODO load the animation file from assets
//     // Use the RiveFile class and the path 'assets/animation/rive_workshop_speedo.riv'
//
//     //TODO load the mainArtboard from your file
//
//     //TODO load the animationController from your artboard
//     // Use StateMachineController.fromArtboard and pass the artboard object and the state machine name ('speedometer')
//     // var animationController =
//
//     if (animationController != null) {
//       //TODO add the controller to your artboard
//
//       //TODO initialise the input with the input name from the state machine
//       // Use animationController.findInput
//
//       //TODO set the value of the input to widget.initValue
//     }
//
//     setState(() {
//       //TODO initialise _riveArtboard with the artboard
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BaseWidget(
//       child: _riveArtboard == null
//           ? const Center(
//               child: CircularProgressIndicator(),
//             )
//           : Stack(
//               alignment: Alignment.center,
//               children: [
//                 //TODO add Rive Widget, use "fit: BoxFit.fitWidth"
//                 Countup(
//                   begin: 0,
//                   end: widget.initValue,
//                   duration: const Duration(seconds: 1),
//                   style: const TextStyle(
//                     color: Colors.grey,
//                     fontWeight: FontWeight.w800,
//                     fontSize: 30,
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }
