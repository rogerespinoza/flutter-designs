import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Image(image: AssetImage('assets/landscape.jpeg')),
        Title(),
        SectionButtons(),
        Description()
      ]),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: const Text(
          'Dolor adipisicing occaecat aliquip est. Deserunt ad sit quis amet qui labore ea ad esse ipsum labore commodo mollit aliquip. Voluptate voluptate deserunt ipsum sint aute adipisicing reprehenderit. Proident excepteur nostrud excepteur labore magna laboris consectetur dolor deserunt. Dolor adipisicing occaecat aliquip est. Deserunt ad sit quis amet qui labore ea ad esse ipsum labore commodo mollit aliquip. Voluptate voluptate deserunt ipsum sint aute adipisicing reprehenderit. Proident excepteur nostrud excepteur labore magna laboris consectetur dolor deserunt. '),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      // color: Colors.red,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45),
                )
              ]),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text('41')
            ],
          )
        ],
      ),
    );
  }
}

class SectionButtons extends StatelessWidget {
  const SectionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomButton(
            icon: Icons.call,
            title: 'CALL',
          ),
          CustomButton(
            icon: Icons.location_on,
            title: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            title: 'SHARE',
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('object');
      },
      child: Column(
        children: [
          Icon(icon),
          const SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
