import 'package:flutter/material.dart';
import '../Widgets/footer.dart';
import '../Widgets/nav_app.dart';
import '../Widgets/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //navbar and part 2
          Container(
            color: Color.fromARGB(255, 218, 193, 193),
            child: Column(
              children: [
                nav_app(),
                //parte
                part2()
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(50),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                sizedbox_height(70),
                //Featured Categories
                Text("Featured Categories"),
                divider_under_text(),
                sizedbox_height(70),
                featured_ategories(),
                sizedbox_height(120),
                //Featured Collection
                Text("Featured Collection"),
                divider_under_text(),
                sizedbox_height(70),
                featured_collection(),
                sizedbox_height(70),
                //Latest Products
                Text("Latest Products"),
                divider_under_text(),
                sizedbox_height(70),
                last_product_row1(),
                sizedbox_height(70),
                last_product_row2(),
              ],
            ),
          ),
          //footer
          Footer(),
        ],
      ),
    );
  }

  Text text_brown(String s) {
    return Text(
      s,
      style: TextStyle(color: Color.fromARGB(255, 146, 134, 134)),
    );
  }

  Text text_white(String s) {
    return Text(
      s,
      style: TextStyle(color: Colors.white),
    );
  }

  Row last_product_row2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        product(
            img: 'assets/images/87.jpg',
            description: "Women's High Heeled \n Shoes Solid color",
            price: "5000 SDG"),
        product(
            img: 'assets/images/99.jpg',
            description: " Women's 2Pcs Blouse \n Set V Neck",
            price: "3600 SDG"),
        product(
            img: 'assets/images/19.jpg',
            description: "Women's Backpack \n Large Capacity Bag ",
            price: "3000 SDG"),
        product(
            img: 'assets/images/98.jpg',
            description: "Women's Tee Simple \n Creative Fashion",
            price: "4000 SDG"),
      ],
    );
  }

  Row last_product_row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        product(
            img: 'assets/images/7.jpg',
            description: "Men's Black Leather \n Long Sleeves Jacket",
            price: "6000 SDG"),
        product(
            img: 'assets/images/55.jpg',
            description: " Men's Shirt Collar Long \n Sleeve",
            price: "3800 SDG"),
        product(
            img: 'assets/images/22.jpg',
            description: "Men's Pants Set Simple \n  Sweatshirt",
            price: "4000 SDG"),
        product(
            img: 'assets/images/12.jpg',
            description: "Men's Sports Fashion \n Running Shoes",
            price: "5000 SDG"),
      ],
    );
  }

  Row featured_collection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        column_featuer_collection(
            'assets/images/0.jpg', "Women's Evining Dress", "2300 SDG"),
        column_featuer_collection(
            'assets/images/1.jpg', " Pink Elegant Dress Style", "9000 SDG"),
        column_featuer_collection(
            'assets/images/11.jpg', "Simple Neat Outfit", "9000 SDG"),
        column_featuer_collection(
            'assets/images/111.jpg', "Brownish Style Outfit", "11000 SDG"),
      ],
    );
  }

  Padding featured_ategories() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 200),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 50,
        runSpacing: 30,
        children: <Widget>[
          images_wrap_1('assets/images/444.jpg'),
          images_wrap_1('assets/images/3.jpg'),
          images_wrap_1('assets/images/4.jpg'),
          images_wrap_1('assets/images/2.jpg'),
          images_wrap_1('assets/images/22.jpg'),
          images_wrap_1(
            'assets/images/21.jpg',
          ),
        ],
      ),
    );
  }

  Column column_featuer_collection(
      String img, String description, String price) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          child: Image.asset(
            img,
            fit: BoxFit.cover,
            height: 400,
            width: 250,
          ),
        ),
        Text(description),
        Row(
          children: [
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star_border_outlined)
          ],
        ),
        Text(price)
      ],
    );
  }

  MaterialButton images_wrap_1(String s) {
    return MaterialButton(
      onPressed: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          s,
          fit: BoxFit.cover,
          height: 350,
          width: 250,
        ),
      ),
    );
  }

  Container divider_under_text() {
    return Container(
      width: 100,
      child: const Divider(
        thickness: 5,
        height: 20,
        color: Colors.black,
      ),
    );
  }

  SizedBox sizedbox_height(double h) {
    return SizedBox(
      height: h,
    );
  }

  SizedBox sizedbox_width(double w) {
    return SizedBox(
      width: w,
    );
  }

  Container part2() {
    return Container(
      padding: EdgeInsets.fromLTRB(130, 20, 90, 20),
      height: 580,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Stylish Comfort \n  For Everyone!"),
              SizedBox(
                height: 40,
              ),
              Text(
                  "You deserve to look good and feel amazing to gain more  confidence \n and that's what drives us to exhibit our collection at Loved One"),
              SizedBox(
                height: 40,
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [Text("Explore Now"), Icon(Icons.forward)],
                ),
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/image.jpg',
              fit: BoxFit.cover,
              height: 400,
              width: 700,
            ),
          )
        ],
      ),
    );
  }
}
