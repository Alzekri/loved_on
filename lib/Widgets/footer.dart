import 'package:flutter/material.dart';
import 'package:loved_on/Screens/home_screen.dart';

class Footer extends StatelessWidget {
  Footer({Key? key}) : super(key: key);
  HomeScreen hs = new HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 80),
      color: Colors.black,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      hs.text_white("Download Our App"),
                      hs.sizedbox_height(20),
                      hs.text_brown(
                          "Download App for Android and iOS Mobile \n Phone "),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/play-store.png',
                                    fit: BoxFit.cover,
                                    height: 47,
                                    width: 140,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/app-store.png',
                                    fit: BoxFit.cover,
                                    height: 47,
                                    width: 140,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/lovedone.png',
                        fit: BoxFit.fill,
                        height: 128,
                        width: 200,
                      ),
                    ),
                    hs.text_brown(
                        "Our Purpose Is To Sustainably Make Our Customers Happy and \n Satisfied "),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    hs.text_white("Useful Links"),
                    TextButton(
                      onPressed: () {},
                      child: hs.text_brown("Coupons \n Return Policy "),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    hs.text_white("Follow Us"),
                    TextButton(
                      onPressed: () {},
                      child: hs.text_brown("Facebook "),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: hs.text_brown("Instagram"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: hs.text_brown("Twitter "),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Divider(
              color: Colors.white,
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: hs.text_white("Copyrights © 2021-Designer AF_AZ"),
          ),
        ],
      ),
    );
  }
}
