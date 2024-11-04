import 'package:flutter/material.dart';
import 'package:shirt_shop/homescreen.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    double heightOfScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthOfScreen * 0.05, vertical: heightOfScreen * 0.05),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: heightOfScreen * 0.02),
              child: Container(
                width: widthOfScreen * 0.9,
                height: heightOfScreen * 0.06,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: widthOfScreen * 0.18),
                      child: Text(
                        'Congratulations My Online Shop',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: widthOfScreen * 0.04,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: widthOfScreen * 0.05),
                      child: Container(
                        width: widthOfScreen * 0.04,
                        height: widthOfScreen * 0.04,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: widthOfScreen * 0.025,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/stock-photo-.jpg',
              width: widthOfScreen * 0.6,
              height: heightOfScreen * 0.3,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: heightOfScreen * 0.03, bottom: heightOfScreen * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: widthOfScreen * 0.08,
                    height: widthOfScreen * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Icon(
                      Icons.add,
                      size: widthOfScreen * 0.05,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: widthOfScreen * 0.05),
                  Container(
                    width: widthOfScreen * 0.08,
                    height: widthOfScreen * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Icon(
                      Icons.check,
                      size: widthOfScreen * 0.05,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen(title: '')),
                );
              },
              child: Container(
                width: widthOfScreen * 0.9,
                height: heightOfScreen * 0.06,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(80),
                ),
                child: Center(
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: widthOfScreen * 0.05,
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
