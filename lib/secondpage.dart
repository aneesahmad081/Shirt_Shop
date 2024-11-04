import 'package:flutter/material.dart';
import 'package:shirt_shop/thirdpage.dart';

class SecondPage extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const SecondPage({
    super.key,
    required this.image,
    required this.name,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    double heightOfScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthOfScreen * 0.04, vertical: heightOfScreen * 0.06),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: heightOfScreen * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: widthOfScreen * 0.08,
                      height: heightOfScreen * 0.04,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 223, 232),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: widthOfScreen * 0.02),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: widthOfScreen * 0.06,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'T-Shirt',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: widthOfScreen * 0.06,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: widthOfScreen * 0.08,
                    height: heightOfScreen * 0.04,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 250, 223, 232),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.menu_sharp,
                      size: widthOfScreen * 0.05,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: widthOfScreen * 0.75,
              height: heightOfScreen * 0.35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: heightOfScreen * 0.015, top: heightOfScreen * 0.015),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: widthOfScreen * 0.05,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: widthOfScreen * 0.2,
                    endIndent: widthOfScreen * 0.2,
                  ),
                  Image.asset(
                    image,
                    height: heightOfScreen * 0.25,
                    width: heightOfScreen * 0.25,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: heightOfScreen * 0.015),
              child: Container(
                width: widthOfScreen * 0.18,
                height: heightOfScreen * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(child: Text(price)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: heightOfScreen * 0.015, bottom: heightOfScreen * 0.015),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: widthOfScreen * 0.12,
                    height: heightOfScreen * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Text(
                        '34',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: widthOfScreen * 0.03),
                    child: Container(
                      width: widthOfScreen * 0.12,
                      height: heightOfScreen * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(child: Text('35')),
                    ),
                  ),
                  Container(
                    width: widthOfScreen * 0.12,
                    height: heightOfScreen * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(child: Text('36')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: widthOfScreen * 0.03),
                    child: Container(
                      width: widthOfScreen * 0.12,
                      height: heightOfScreen * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(child: Text('37')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: heightOfScreen * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                );
              },
              child: Container(
                width: widthOfScreen * 0.75,
                height: heightOfScreen * 0.06,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: widthOfScreen * 0.05,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
