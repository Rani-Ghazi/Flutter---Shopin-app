import 'package:card_swiper/card_swiper.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shopin/detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> swipe = [
    'https://www.dualshockers.com/static/uploads/2021/04/ps5-update-april-27.jpg',
    'https://cdn.shopify.com/s/files/1/0277/1795/9744/products/6D_II_9_1200x1200.jpg?v=1633382277',
    'https://images.macrumors.com/article-new/2014/09/apple-watch-series-7.jpg',
    'https://www.lifewire.com/thmb/6JoKtVCzuEVJxQxZqrvd3AYXcUg=/1000x665/filters:no_upscale():max_bytes(150000):strip_icc()/smasung-qled-8-series-curved-smsng-aaa-59499d735f9b58d58ae5c763.jpg'
  ];
  List<String> image = [
    'https://images.unsplash.com/photo-1600003014755-ba31aa59c4b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cm9sZXglMjB3YXRjaHxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://cdn.shopify.com/s/files/1/0677/4111/products/BK-BU257_FRONT_800x.jpg?v=1619114714',
    'https://images.sportsdirect.com/images/products/37784518_l.jpg',
    'https://5.imimg.com/data5/FC/FN/MY-50716692/make-up-kit-500x500.jpg',
    'https://ibscgmedical.net/wp-content/uploads/2021/09/iphone-13-pro-max-128-gb-apple-ibscgmedical-3.jpg'
  ];
  List<String> images = [
    'https://static01.nyt.com/images/2022/03/17/us/08xpsatan-shoe/merlin_186039729_cdb846bf-dc3f-49cf-8552-e3992140338b-superJumbo.jpg',
    'https://www.rollingstone.com/wp-content/uploads/2020/09/Screen-Shot-2020-09-12-at-3.20.08-PM-e1599938476848.png',
    'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i4jPhKEFw1NE/v0/1200x-1.jpg',
    'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e5af7319-a671-4187-a10a-020e09e7b3db/air-max-2021-mens-shoes-fnRMh3.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/aab6ba24-d8fb-4812-8ad1-e458f8de5889/revolution-6-baby-toddler-shoes-q86rDs.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 99, 87, 253),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "SHOPIN",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          suffixStyle: TextStyle(color: Colors.white),
                          labelText: "Search",
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 175,
                left: 35,
                child: Container(
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Swiper(
                    itemCount: swipe.length,
                    autoplay: true,
                    pagination: SwiperPagination(),
                    itemBuilder: (_, i) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Image.network(
                                "${swipe[i]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(70, 58, 67, 135),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text('Buy Now'),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 120),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: Container(
                color: Color.fromARGB(255, 245, 245, 245),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Arrivals",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(74, 0, 102, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Text("View All"),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildProductWidget(
                              images[0], 200, '5', 'Nike Air Max 90'),
                          _buildProductWidget(
                              images[1], 180, '4', 'Air Jordan 1'),
                          _buildProductWidget(
                              images[2], 300, '10', 'Nike Waffle Racer'),
                          _buildProductWidget(
                              images[3], 160, '3', 'Air Huarache'),
                          _buildProductWidget(
                              images[4], 170, '3', 'Air Huarache 2x'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: Container(
                color: Color.fromARGB(255, 245, 245, 245),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Best Selling",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(74, 0, 102, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Text("View All"),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildProductWidget(
                              image[0], 700, '1', 'Rolex Watch'),
                          _buildProductWidget(
                              image[1], 19, '2', 'Xnox Sunglass'),
                          _buildProductWidget(
                              image[2], 70, '1', 'Barcelona T-shirt'),
                          _buildProductWidget(
                              image[3], 156, '1', 'MAC Makeup Kit'),
                          _buildProductWidget(
                              image[4], 2000, '3', 'Iphone 13 Pro Max'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Designed By Rani Ghazi",
              style: TextStyle(fontSize: 15, letterSpacing: 3),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildProductWidget(
      String image, int price, String color, String productName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 140,
                          height: 125,
                          color: Color.fromARGB(255, 205, 196, 196),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return DetailPage(image, productName,
                                    price.toString(), false);
                              }));
                            },
                            child: Hero(
                              tag: 'hero',
                              child: Image.network(
                                image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        child: IconButton(
                          onPressed: () {
                            Fluttertoast.showToast(
                              msg: 'You Favorite That Item',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Color.fromARGB(255, 144, 13, 4),
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          },
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(productName),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    color: Color.fromARGB(222, 249, 249, 249),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        "$color Colors",
                        style: TextStyle(
                            color: Color.fromARGB(255, 139, 139, 139)),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "\$$price",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 245, 245, 245),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          onPressed: () {
                            Fluttertoast.showToast(msg: 'Added To Cart');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
