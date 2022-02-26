import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.5,
        0.5
      ],
          colors: [
        Color(0xff5EE8C5),
        Color(0xff30BAD6),
      ]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: Stack(children: [
          const Background(),
          PageView(
              // physics: const ClampingScrollPhysics(),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: const [MainContent(), Page2()])
        ]
            //  PageView(
            //     // physics: const ClampingScrollPhysics(),
            //     physics: const BouncingScrollPhysics(),
            //     scrollDirection: Axis.vertical,
            //     children: const [Page1(), Page2()]),
            ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: const [Background(), MainContent()]);
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Bienvenido',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 45, fontWeight: FontWeight.w500, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Container(
        // color: Colors.red,
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 0, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text('11°', style: textStyle),
                Text('Miercoles', style: textStyle),
              ],
            ),
            // Expanded(child: Container()),
            const Icon(Icons.keyboard_arrow_down,
                size: 100, color: Colors.white)
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}
// import 'package:flutter/material.dart';

// class ScrollScreen extends StatelessWidget {
//   const ScrollScreen({Key? key}) : super(key: key);

//   final boxDecoration = const BoxDecoration(
//       gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           stops: [
//         0.5,
//         0.5
//       ],
//           colors: [
//         Color(0xff5EE8C5),
//         Color(0xff30BAD6),
//       ]));

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: boxDecoration,
//         child: PageView(
//             // physics: const ClampingScrollPhysics(),
//             physics: const BouncingScrollPhysics(),
//             scrollDirection: Axis.vertical,
//             children: const [Page1(), Page2()]),
//       ),
//     );
//   }
// }

// class Page1 extends StatelessWidget {
//   const Page1({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(children: const [Background(), MainContent()]);
//   }
// }

// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xff30BAD6),
//       child: Center(
//         child: TextButton(
//           onPressed: () {},
//           child: const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 40),
//             child: Text(
//               'Bienvenido',
//               style: TextStyle(color: Colors.white, fontSize: 30),
//             ),
//           ),
//           style: TextButton.styleFrom(
//               backgroundColor: const Color(0xff0098FA),
//               shape: const StadiumBorder()),
//         ),
//       ),
//     );
//   }
// }

// class MainContent extends StatelessWidget {
//   const MainContent({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const textStyle = TextStyle(
//         fontSize: 45, fontWeight: FontWeight.w500, color: Colors.white);
//     return SafeArea(
//       bottom: false,
//       child: Container(
//         // color: Colors.red,
//         width: double.infinity,
//         padding: const EdgeInsets.only(bottom: 0, top: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Column(
//               children: const [
//                 Text('11°', style: textStyle),
//                 Text('Miercoles', style: textStyle),
//               ],
//             ),
//             // Expanded(child: Container()),
//             const Icon(Icons.keyboard_arrow_down,
//                 size: 100, color: Colors.white)
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Background extends StatelessWidget {
//   const Background({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: const Color(0xff30BAD6),
//         height: double.infinity,
//         alignment: Alignment.topCenter,
//         child: const Image(image: AssetImage('assets/scroll-1.png')));
//   }
// }
