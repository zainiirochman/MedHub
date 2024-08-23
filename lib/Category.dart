import 'package:flutter/material.dart';
import 'package:medhub/Details.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
            },
        ),
        title: Text(
          'Diabetes Care',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color.fromRGBO(9, 15, 71, 1)
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(255, 255, 255, 1),
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
            padding: EdgeInsets.only(left: 20, right: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Diabetic Diet',
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
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildProdukDiabet('Sugar Subtitute', 'assets/images/MockupProduk1.png'),
                  SizedBox(width: 20,),
                  _buildProdukDiabet('Juice & Vinegars', 'assets/images/MockupProduk2.png'),
                  SizedBox(width: 20,),
                  _buildProdukDiabet('Vitamins Medicines', 'assets/images/MockupProduk1.png'),
                  SizedBox(width: 20,),
                  _buildProdukDiabet('Juice & Vinegars', 'assets/images/MockupProduk2.png'),
                ],
              ),
            )
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'All Products',
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
            padding: EdgeInsets.only(left: 20, right: 20),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildProduk('assets/images/MockupProduk1.png', 'Accu-chek Active Test Strip', 'Rp 112.000', '4.2', 'SALE'),
                    Spacer(),
                    _buildProduk('assets/images/MockupProduk2.png', 'Omron HEM-8712 BP Monitor', 'Rp 150.000', '4.2', '15% OFF'),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildProduk('assets/images/MockupProduk1.png', 'Accu-chek Active Test Strip', 'Rp 112.000', '4.2', 'SALE'),
                    Spacer(),
                    _buildProduk('assets/images/MockupProduk2.png', 'Omron HEM-8712 BP Monitor', 'Rp 150.000', '4.2', '15% OFF'),
                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProduk(String imagePath, String title, String price, String rating, String labelText){
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => details()),
        );
      },
      child: Container(
        width: 157,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            border: Border.all(width: 1,color: Color.fromRGBO(235, 235, 235, 1))
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 155,
                height: 158,
                child: Stack(
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imagePath),
                      ],
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(255, 90, 90, 1),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          labelText,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 118,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
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
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),

      ),
    );
  }

  Widget _buildProdukDiabet (String title, String imagePath) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => details()),
        );
      },
      child: Container(
        width: 110,
        height: 162,
        decoration: BoxDecoration(
          color: Color.fromRGBO(245, 247, 250, 1),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 99,
                width: 109,
                child: Image.asset(imagePath),),
              Spacer(),
              Container(
                width: 80,
                padding: EdgeInsets.only(left: 17),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
              ),
              SizedBox(height: 13,),
            ],
          ),

      ),
    );
  }
}


