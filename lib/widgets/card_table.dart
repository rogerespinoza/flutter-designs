import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.green, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.car_rental,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blueGrey, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.deepOrange,
              icon: Icons.car_rental,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.green, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.car_rental,
              text: 'Transport'),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.blueGrey, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.deepOrange,
              icon: Icons.car_rental,
              text: 'Transport'),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 35,
          ),
          radius: 30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(text, style: TextStyle(color: color, fontSize: 18))
      ],
    ));
  }
}

class _SingleCardBackground extends StatelessWidget {
  final Widget child;
  const _SingleCardBackground({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      // decoration: BoxDecoration(
      //     color: const Color.fromRGBO(62, 66, 107, .3),
      //     borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            // sigmaY: 20,
          ),
          child: Container(
            // color: Color.fromRGBO(62, 66, 107, 0.3),
            // margin: const EdgeInsets.all(15),

            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, .7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
