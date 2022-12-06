import 'package:flutter/material.dart';

class nav_app extends StatelessWidget {
  const nav_app({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/lovedone.png',
            height: 100,
            width: 100,
          ),
          Row(
            children: [
              buttonsaction('home'),
              buttonsaction('product'),
              buttonsaction('account'),
              buttonsaction('about'),
              buttonsaction('contact'),
              Icon(
                Icons.card_travel,
                size: 50,
                color: Color.fromARGB(255, 139, 13, 13),
              )
            ],
          )
        ],
      ),
    );
  }

  TextButton buttonsaction(String text) {
    return TextButton(
      onPressed: () {},
      child: Text('$text',
          style: TextStyle(
              color: Color.fromARGB(255, 156, 154, 154), fontSize: 17)),
    );
  }
}
