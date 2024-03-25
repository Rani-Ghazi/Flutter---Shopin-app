import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailPage extends StatefulWidget {
  final String image;
  final String pName;
  final String price;
  bool isLiked;

  DetailPage(this.image, this.pName, this.price, this.isLiked);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var _isSelected = [false, false, false, true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(0), children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(95, 215, 39, 39),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Container(
                width: 320,
                height: 230,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Hero(
                  tag: 'hero',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      '${widget.image}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 290,
                ),
                Text(
                  "\$${widget.price}",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "${widget.pName}",
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: widget.isLiked
                          ? Color.fromARGB(255, 255, 179, 179)
                          : Color.fromARGB(255, 255, 197, 197),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: widget.isLiked ? Colors.red : Colors.white,
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(
                            msg: widget.isLiked ? "Un Favorite" : 'Favorite',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Color.fromARGB(255, 137, 27, 19),
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                          setState(() {
                            widget.isLiked = !widget.isLiked;
                          });
                        },
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 115, 210, 236),
                      child: IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Fluttertoast.showToast(
                            msg: 'Copied To Your Clipboard',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor:
                                Color.fromARGB(255, 50, 111, 196),
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select A Size",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ToggleButtons(
                      borderRadius: BorderRadius.circular(20),
                      fillColor: Color.fromARGB(60, 175, 184, 255),
                      selectedColor: Color.fromARGB(255, 7, 6, 6),
                      children: <Widget>[
                        Text("6"),
                        Text("6.5"),
                        Text("7"),
                        Text("7.5"),
                        Text("8"),
                      ],
                      isSelected: _isSelected,
                      onPressed: (int index) {
                        setState(() {
                          _isSelected[index] = !_isSelected[index];
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      color: Color.fromARGB(20, 255, 0, 25),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SelectableText(
                          "cool and aerodynamic designs depending on the sport. Our Product are made to be useful and also to provide a good looking style in what you wear.",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Added To Your Cart ',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Color.fromARGB(255, 230, 231, 233),
                          textColor: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16.0,
                        );
                      },
                      child: Text("Add to Cart"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("Buy Now "),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
