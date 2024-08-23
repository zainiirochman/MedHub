import 'package:flutter/material.dart';
import 'package:medhub/Checkout.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  int _quantity = 1;

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
          'Your Cart',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color.fromRGBO(9, 15, 71, 1),
          ),
        ),
      ),
      body: ListView(
        children: [Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      '2 Items in your cart',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Color.fromRGBO(9, 15, 71, 1),
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Icon(Icons.add, color: Color.fromRGBO(0, 165, 155, 1),),
                          Text(
                            'Add More',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: Color.fromRGBO(0, 165, 155, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              _buildProdukCard('assets/images/MockupProduk1.png', 'Sugar free gold', 'bottle of 500 pellets', 'Rp 25.000', _quantity, (newQuantity) {setState(() {_quantity = newQuantity;});},),
              _divider(),
              _buildProdukCard('assets/images/MockupProduk2.png', 'Sugar free gold', 'bottle of 500 pellets', 'Rp 18.000', _quantity, (newQuantity) {setState(() {_quantity = newQuantity;});},),
              _divider(),
              SizedBox(height: 20,),
              Container(
                width: 360,
                height: 40,
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6),),
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.discount_outlined, color: Color.fromRGBO(9, 15, 71, 1),),
                    SizedBox(width: 20,),
                    Text(
                      '1 Coupon applied',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color.fromRGBO(0, 165, 155, 1)
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.cancel_outlined, color: Color.fromRGBO(0, 0, 0, 0.25),size: 20,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Text(
                  'Payment Summary',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(9, 15, 71, 1)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              _summary('Order Total', 'Rp 228.000'),
              _summary('Item Discount', 'Rp 228.000'),
              _summary('Coupon Discount', 'Rp 228.000'),
              _summary('Shipping', 'Rp 228.000'),
              _divider(),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(9, 15, 71, 1)
                      ),
                    ),
                    Text(
                      'Rp 185.000',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(9, 15, 71, 1)
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 360,
                height: 50,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => checkout()),
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
                          'PLACE ORDER',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ],
      ),
    );
  }
}

Widget _buildProdukCard (String imagePath, String title, String subTitle, String price, int quantity, Function(int) onQuantityChanged,){
  return Container(
    width: 360,
    height: 96,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10),),
      color: Colors.white,
    ),
    child: Row(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imagePath),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10),),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(9, 15, 71, 1),
              ),
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(9, 15, 71, 0.45),
              ),
            ),
            Spacer(),
            Text(
              price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(9, 15, 71, 1),
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.cancel_outlined, color: Color.fromRGBO(0, 0, 0, 0.25),size: 20,),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: CircleAvatar(
                      backgroundColor: Color.fromRGBO(0, 165, 155, 1),
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                    onPressed: (){
                      onQuantityChanged(quantity - 1);
                    },
                    iconSize: 20,
                  ),
                  Container(
                    width: 20,
                    child: Text(
                      '$quantity',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),
                    ),
                  ),
                  IconButton(
                    icon: CircleAvatar(
                      backgroundColor: Color.fromRGBO(15, 55, 89, 1),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    onPressed: (){
                      onQuantityChanged(quantity + 1);
                    },
                    iconSize: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
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

Widget _summary (String text, String price){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(9, 15, 71, 0.45),
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(9, 15, 71, 1),
            ),
          ),
        ],
      ),
      SizedBox(height: 20,),
    ],
  );
}