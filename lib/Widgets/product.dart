import 'package:flutter/material.dart';

class product extends StatelessWidget {
  product({
    Key? key,
    required this.img,
    required this.description,
    required this.price,
  }) : super(key: key);

  String img;
  String description;
  String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: MaterialButton(
            onPressed: () {},
            child: Image.asset(
              img,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Expanded(
          child: Text(
            description,
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          children: [
            Spacer(
              flex: 5,
            ),
            Expanded(child: Icon(Icons.star)),
            Expanded(child: Icon(Icons.star)),
            Expanded(child: Icon(Icons.star)),
            Expanded(child: Icon(Icons.star)),
            Expanded(child: Icon(Icons.star_border_outlined)),
            Spacer(
              flex: 5,
            )
          ],
        ),
        Expanded(child: Text(price))
      ],
    );
  }
}
