import 'package:flutter/material.dart';
import 'package:medhub/Cart.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  final PageController _controller = PageController();
  int _selectedButtonIndex = -1;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 40,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cart()),
              );
            },
          ),
          SizedBox(width: 16),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sugar Free Gold Low Calories',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
                Text(
                  'Etiam mollis metus non purus',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(9, 15, 71, 0.45),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 327,
            height: 140,
            padding: EdgeInsets.only(left: 20, right: 20),
            color: Colors.white,
            child: PageView(
              controller: _controller,
              children: [
                _buildProdukPic('assets/images/MockupProduk1.png'),
                _buildProdukPic('assets/images/MockupProduk2.png'),
                _buildProdukPic('assets/images/MockupProduk1.png'),
              ],
            ),
          ),
          Container(
            height: 10,
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3, // Number of pages
                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Color.fromRGBO(0, 165, 155, 1),
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Rp 56.000',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color.fromRGBO(9, 15, 71, 1),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Etiam mollis',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromRGBO(9, 15, 71, 0.45),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Spacer(),
                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.add_box_outlined, color: Color.fromRGBO(0, 165, 155, 1), size: 16,),
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(0, 165, 155, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: _divider(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Package Size',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
            child: Row(
              children: [
                _buildSelection(0),
                SizedBox(width: 16,),
                _buildSelection(1),
                SizedBox(width: 16,),
                _buildSelection(2),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
                Container(
                  width: 320,
                  color: Colors.white,
                  child: Text(
                    'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Color.fromRGBO(9, 15, 71, 0.45),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Rating and Reviews',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            color: Colors.white,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "4.4",
                          style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.star, color: Colors.amber, size: 30),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      "923 Ratings\nand 257 Reviews",
                      style: TextStyle(color: Color.fromRGBO(9, 15, 71, 0.45), fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Spacer(),
                Column(children: [
                  _buildRating(5, 0.67),
                  _buildRating(4, 0.37),
                  _buildRating(3, 0.74),
                  _buildRating(2, 0.23),
                  _buildRating(1, 0.17),

                ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lorem Hoffman',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(9, 15, 71, 1),
                      ),
                    ),
                    Text(
                      '05 August 2024',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(9, 15, 71, 0.45),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Text(
                      '4.2',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(9, 15, 71, 0.45),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 320,
                  child: Text(
                    'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Color.fromRGBO(9, 15, 71, 0.45)
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 180,
            color: Colors.white,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Container(
              width: 360,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cart()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(15, 55, 89, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'GO TO CART',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProdukPic (String imagePath){
    return Container(
      width: 327,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromRGBO(248, 248, 248, 1),
      ),
      child: Image.asset(
        imagePath,
      ),
    );
  }

  Widget _divider(){
    return SizedBox(
      height: 20,
      child: Divider(
        color: Color.fromRGBO(9, 28, 63, 0.08),
        thickness: 1,
      ),
    );
  }

  Widget _buildSelection (int index,){
    bool isSelected = _selectedButtonIndex == index;
    return Container(
      width: 100,
      height: 68,
      child: ElevatedButton(
        onPressed: () => _onButtonPressed(index),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Color.fromRGBO(225, 225, 225, 1) : Color.fromRGBO(255, 255, 255, 1),
          elevation: 0,
          side: BorderSide(width: 1, color: isSelected ? Color.fromRGBO(0, 165, 155, 1) : Color.fromRGBO(225, 225, 225, 1) ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rp 252.000',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 10,
                color: Color.fromRGBO(0, 165, 155, 1),
              ),
            ),
            Text(
              '500 Pellets',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromRGBO(0, 165, 155, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRating(int starCount, double percentage) {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            "$starCount",
            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: Color.fromRGBO(9, 15, 71, 0.45)),
          ),
          SizedBox(width: 4),
          Icon(Icons.star, color: Colors.amber, size: 16),
          SizedBox(width: 8),
          Expanded(
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.grey,
              color: Colors.teal,
              minHeight: 3,
            ),
          ),
          SizedBox(width: 8),
          Text(
            "${(percentage * 100).toInt()}%",
            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: Color.fromRGBO(9, 15, 71, 0.45)),
          ),
        ],
      ),
    );
  }
}
