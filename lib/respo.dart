import 'package:flutter/material.dart';
class Respo extends StatelessWidget {
  const Respo({super.key});

  @override
  Widget build(BuildContext context) {
    double widthofscreen=MediaQuery.of(context).size.width;
    double hightofscreen=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,

          )
        ],
      ),
    );
  }
}
