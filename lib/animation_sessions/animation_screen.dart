import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset("assets/animations/loading.json"),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         title: Text("Some Title"),
      //         subtitle: Column(
      //           children: [
      //             Text("Some Sub Titles"),
      //             Row(children: [IconFav(), Text(" 15")]),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      //   itemCount: 10,
      // ),
    );
  }
}

class IconFav extends StatefulWidget {
  const IconFav({super.key});

  @override
  State<IconFav> createState() => _IconFavState();
}

class _IconFavState extends State<IconFav> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<Color?> colorAnim;
  late Animation<double> sizeAnim;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    // _animationController.drive(child)
    colorAnim = ColorTween(
      begin: Colors.grey,
      end: Colors.red,
    ).animate(_animationController);

    sizeAnim = TweenSequence<double>([
      TweenSequenceItem<double>(tween: Tween(begin: 40, end: 50), weight: 1),
      TweenSequenceItem<double>(tween: Tween(begin: 50, end: 40), weight: 1),
    ]).animate(_animationController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return IconButton(
          onPressed: () {
            _animationController.isCompleted
                ? _animationController.reverse()
                : _animationController.forward();
          },
          icon: Icon(
            Icons.favorite,
            size: sizeAnim.value,
            color: colorAnim.value,
          ),
        );
      },
    );
  }
}



/*
// class AnimationScreen extends StatefulWidget {
//   const AnimationScreen({super.key});

//   @override
//   State<AnimationScreen> createState() => _AnimationScreenState();
// }

// class _AnimationScreenState extends State<AnimationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepOrange,
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               // buildRoute(),
//               MaterialPageRoute(builder: (context) => Animation2Screen()),
//             );
//           },
//           child: Text("Go Next"),
//         ),
//       ),
//     );
//   }

//   // PageRoute buildRoute() {
//   // return PageRouteBuilder(
//   //   pageBuilder: (context, animation, secondaryAnimation) =>
//   //       Animation2Screen(),
//   //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
//   //     return FadeTransition(
//   //       opacity: Tween<double>(begin: 0.5, end: 1).animate(animation),
//   //       child: SlideTransition(
//   //         position: Tween<Offset>(
//   //           begin: Offset(0.5, 0),
//   //           end: Offset(0, 0),
//   //         ).animate(animation),
//   //         child: child,
//   //       ),
//   //     );

//   // final tween = Tween<Offset>(begin: Offset(1, -1), end: Offset(0, 0));
//   // return SlideTransition(
//   //   position: tween.animate(animation),
//   //   child: child,
//   // );
//   //     },
//   //     transitionDuration: Duration(milliseconds: 1000),
//   //   );
//   // }
// }

// class Animation2Screen extends StatelessWidget {
//   const Animation2Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.grey);
//   }
// }

// class AnimationScreen extends StatefulWidget {
//   const AnimationScreen({super.key});

//   @override
//   State<AnimationScreen> createState() => _AnimationScreenState();
// }

// class _AnimationScreenState extends State<AnimationScreen> {
//   double positionX = 0;
//   double positionY = 0;
//   CrossFadeState crossFadeState = CrossFadeState.showFirst;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // AnimatedCrossFade(
//           //   firstChild: Image.asset(
//           //     "assets/images/image_test.jpg",
//           //     height: 50,
//           //     width: 150,
//           //     fit: BoxFit.cover,
//           //   ),
//           //   secondChild: Text("Hello In Cross Fade"),
//           //   crossFadeState: crossFadeState,
//           //   duration: Duration(milliseconds: 2000),
//           // ),
//           // AnimatedContainer(
//           //   duration: Duration(milliseconds: 2000),
//           //   width: size,
//           //   height: size,
//           //   decoration: BoxDecoration(
//           //     image: DecorationImage(
//           //       image: AssetImage("assets/images/image_test.jpg"),
//           //       fit: BoxFit.cover,
//           //     ),
//           //   ),
//           // ),
//           AnimatedPositioned(
//             duration: Duration(milliseconds: 1000),
//             top: positionX,
//             left: positionY,
//             child: Container(color: Colors.deepOrange, height: 100, width: 100),
//           ),
//           Align(
//             alignment: AlignmentGeometry.bottomCenter,
//             child: ElevatedButton(
//               onPressed: () {
//                 // size = size == 100 ? 50 : 100;
//                 // crossFadeState = crossFadeState == CrossFadeState.showFirst
//                 //     ? CrossFadeState.showSecond
//                 //     : CrossFadeState.showFirst;
//                 positionX = Random().nextDouble() * 200;
//                 positionY = Random().nextDouble() * 500;
//                 setState(() {});
//               },
//               child: Text("Change"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
*/