import 'package:flutter/material.dart';
import 'package:medhub/Cart.dart';
import 'package:medhub/Category.dart';
import 'package:medhub/Details.dart';
import 'package:medhub/Login.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        toolbarHeight: 60,
        leading: Row(
          children: [
            SizedBox(width: 15,height: 1,),
            InkWell(
              onTap: (){},
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
                radius: 20,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
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
            color: Color.fromRGBO(247, 251, 255, 1),
            width: MediaQuery.of(context).size.width,
            height: 140,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
                    color: Colors.blue,
                  ),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Lorem',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Welcome to MedHub',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 30,
                  right: 30,
                  top: 70,
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Color.fromRGBO(9, 15, 71, 0.45),),
                        hintText: 'Search Medicine & Healthcare products',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color.fromRGBO(9, 15, 71, 0.45),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            color: Color.fromRGBO(247, 251, 255, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top Categories',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCategoryIcon('Dental', Icons.health_and_safety, Colors.pinkAccent, (){Navigator.push(context, MaterialPageRoute(builder: (context) => category()),);}),
                      _buildCategoryIcon('Wellness', Icons.spa, Colors.lightGreen, (){Navigator.push(context, MaterialPageRoute(builder: (context) => category()),);}),
                      _buildCategoryIcon('Homeo', Icons.medical_services, Colors.orange, (){Navigator.push(context, MaterialPageRoute(builder: (context) => login()),);}),
                      _buildCategoryIcon('Eye care', Icons.remove_red_eye, Colors.lightBlue, (){Navigator.push(context, MaterialPageRoute(builder: (context) => login()),);}),
                      _buildCategoryIcon('Skin & Hair', Icons.science, Colors.black26, (){Navigator.push(context, MaterialPageRoute(builder: (context) => login()),);}),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(247, 251, 255, 1),
            width: MediaQuery.of(context).size.width,
            height: 150,
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Container(
                  height: 140,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage('assets/images/Iklan1.jpeg')),
                  ),
                  // child: Image.asset('assets/images/Iklan1.jpeg',fit: BoxFit.fill,),
                ),
                Positioned(
                  top: 20,
                  left: 25,
                  width: 130,
                  child: Column(
                    children: [
                      Text(
                        'Save extra on every order',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(0, 165, 155, 1),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Etiam mollis metus non faucibus.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(247, 251, 255, 1),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deals of the Day',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 165, 155, 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // height: 200,
            color: Color.fromRGBO(247, 251, 255, 1),
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildProduk('Accu-check Active Test Strip', 'Rp 112.000', 'assets/images/MockupProduk1.png', '4.3'),
                  SizedBox(width: 30,),
                  _buildProduk('Omron HEM-8712 BP Monitor', 'Rp 150.000', 'assets/images/MockupProduk2.png', ''),
                  SizedBox(width: 30,),
                  _buildProduk('Accu-check Active Test Strip', 'Rp 112.000', 'assets/images/MockupProduk1.png', '4.3'),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            color: Color.fromRGBO(247, 251, 255, 1),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Featured Brands',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(247, 251, 255, 1),
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildBrand('Himalaya Wellness', 'assets/images/Brand_Himalaya.png'),
                  _buildBrand('Accu-Chek', 'assets/images/Brand_Accu.png'),
                  _buildBrand('VLCC', 'assets/images/Brand_Vlcc.png'),
                  _buildBrand('Protinex', 'assets/images/Brand_Protinex.png'),
                  _buildBrand('Himalaya Dua', 'assets/images/Brand_Himalaya.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildProduk(String title, String price, String imagePath, String rating) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => details()),
        );
      },
      child: Container(
        width: 150,
        // padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(9),topRight: Radius.circular(9)),
                  color: Color.fromRGBO(238, 238, 240, 1),
                  image: DecorationImage(image: AssetImage(imagePath),)
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 8,),
                Container(
                  width: 140,
                  height: 38,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 8,),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                    color: Color.fromRGBO(0, 165, 155, 1),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.white, size: 12),
                      SizedBox(width: 4),
                      Text(
                        rating,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

Widget _buildCategoryIcon(String teks, IconData icon, Color color, VoidCallback onPressed) {
  return Container(
    width: 70,
    height: 90,
    child: Column(
      children: [
        IconButton(
          icon: CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color),
          ),
          onPressed: onPressed,
          iconSize: 50,
        ),
        // SizedBox(height: 8),
        Text(
          teks,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Widget _buildBrand(String label, String imagePath) {
  return Container(
    height: 130,
    width: 80,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 30,
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
