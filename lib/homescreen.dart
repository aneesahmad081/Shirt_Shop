import 'package:flutter/material.dart';
import 'package:shirt_shop/secondpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double widthofscreen = MediaQuery.of(context).size.width;
    double heightofscreen = MediaQuery.of(context).size.height;
    List images = [
      'assets/61co9yA5tTL._UF1000,1000_QL80_.jpg',
      'assets/62388151.webp',
      'assets/Gucci-Best-Popular-T-Shirt-Brands-264x300.jpg',
      'assets/hugo-boss-paddy-polo-shirt-men-s-short-sleeve-blue.jpeg',
      'assets/images (1).jpeg',
      'assets/images (2).jpeg',
      'assets/lacoste-heavy-cotton-striped-t-shirt-blue-stripe-p61763-921475_medium.jpg',
      'assets/m10178scm1.jpg',
      'assets/orange.jpg',
      'assets/pma4686mg-puma-better-class-oversized-tee-myrtle-green-62131531-v1_jpg_17_1.webp',
    ];
    List name = [
      'Lucky',
      'Nike',
      'Gucci',
      'Hugo Boss',
      'Adidas',
      'Diesel',
      'Lacoste',
      'Aeropostale',
      'Nautica',
      'Puma'
    ];
    List price = [
      '\$15',
      '\$10',
      '\$50',
      '\$60',
      '\$75',
      '\$86',
      '\$78',
      '\$199',
      '\$93',
      '\$299'
    ];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: widthofscreen * 0.04, vertical: heightofscreen * 0.06),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: heightofscreen * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: widthofscreen * 0.08,
                    height: heightofscreen * 0.04,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 250, 223, 232),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: widthofscreen * 0.02),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 27,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  Text(
                    'T-Shirt Shop',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: widthofscreen * 0.06,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                    width: widthofscreen * 0.08,
                    height: heightofscreen * 0.04,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 250, 223, 232),
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.menu_sharp,
                      size: 20,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double itemHeight = (constraints.maxHeight) / 2;
                  double itemWidth = constraints.maxWidth / 2;
                  return GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: heightofscreen * 0.04,
                      crossAxisSpacing: widthofscreen * 0.05,
                      childAspectRatio: itemWidth / itemHeight,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: itemWidth,
                            height: itemHeight * 0.8,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      FavIconsState(),
                                    ],
                                  ),
                                  Image.asset(
                                    images[index],
                                    width: itemWidth * 0.6,
                                    height: itemHeight * 0.5,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    name[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: itemWidth * 0.1,
                                    ),
                                  ),
                                  Text(
                                    price[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: itemWidth * 0.08,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SecondPage(
                                      image: images[index],
                                      name: name[index],
                                      price: price[index],
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                width: itemWidth * 0.8,
                                height: itemHeight * 0.1,
                                decoration: BoxDecoration(
                                  color: Colors.red[400],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: itemWidth * 0.1,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavIconsState extends StatefulWidget {
  const FavIconsState({super.key});

  @override
  State<FavIconsState> createState() => _FavIconsStateState();
}

class _FavIconsStateState extends State<FavIconsState> {
  bool isfav = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isfav = !isfav;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.05,
        height: MediaQuery.of(context).size.width * 0.05,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          Icons.favorite,
          size: MediaQuery.of(context).size.width * 0.04,
          color: isfav ? Colors.red : Colors.black26,
        ),
      ),
    );
  }
}
