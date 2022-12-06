import 'package:flutter/material.dart';
import 'package:loved_on/Screens/home_screen.dart';
import '../Widgets/footer.dart';
import '../Widgets/nav_app.dart';
import '../Widgets/product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  HomeScreen hs = const HomeScreen();
  var details = [
    {
      'nameimage': 'assets/images/0.jpg',
      'description': "Men's Black Leather \n Long Sleeves Jacket",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/00.jpg',
      'description': "Men's Black Leather \n Long Sleeves Jacket",
      'price': '9000 DSG'
    },
    {
      'nameimage': 'assets/images/1.jpg',
      'description': "Men's Black Leather \n Long Sleeves Jacket",
      'price': '6000 DSG'
    },
    {
      'nameimage': 'assets/images/2.jpg',
      'description': "Men's Black Leather \n Long Sleeves Jacket",
      'price': '6000 DSG'
    },
    {
      'nameimage': 'assets/images/3.jpg',
      'description': "Men's Black Leather \n Long Sleeves Jacket",
      'price': '6000 DSG'
    },
    {
      'nameimage': 'assets/images/4.jpg',
      'description': "Men's Black Leather \n Long Sleeves Jacket",
      'price': '6000 DSG'
    },
    {
      'nameimage': 'assets/images/7.jpg',
      'description': "Men's Black Leather \n Long Sleeves Jacket",
      'price': '6000 DSG'
    },
    {
      'nameimage': 'assets/images/10.jpg',
      'description': "Men's Black Leather \n Long Sleeves Jacket",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/11.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/12.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/17.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/19.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/21.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/22.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/27.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/33.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/37.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/43.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/55.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/66.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/74.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/77.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
    {
      'nameimage': 'assets/images/79.jpg',
      'description': "Women's High Heeled \n Shoes Solid color",
      'price': '5000 DSG'
    },
  ];

  String dropdownValue = 'Sort By Sale';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //navbar
            const nav_app(),
            const SizedBox(
              height: 100,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: part2allproduct(),
            ),
            const SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: details.length,
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(20),
                  child: product(
                      img: '${details[index]['nameimage']}',
                      description: '${details[index]['description']}',
                      price: '${details[index]['price']}'),
                ),
              ),
            ),

            Footer(),
          ],
        ),
      ),
    );
  }

  Row part2allproduct() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "All Prodects",
          style: TextStyle(fontSize: 20),
        ),
        //Sort
        Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              //border: Border.all(color: Colors.black, width: 0.2)),
              ),
          child: DropdownButton<String>(
            // Step 3.
            value: dropdownValue,
            // Step 4.
            items: <String>[
              'Sort By Sale',
              'Sort By Price',
              'Sort By Rating',
              'Defaullt Sorting',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
            // Step 5.
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
          ),
        ),
      ],
    );
  }
}
