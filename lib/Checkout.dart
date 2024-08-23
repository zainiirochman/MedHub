import 'package:flutter/material.dart';
import 'package:medhub/NavBar.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  String? _selectedAddress = 'Home';
  String? _selectedPayment = 'Home';

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
          'Checkout',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color.fromRGBO(9, 15, 71, 1),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  '2 Items in your cart',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Spacer(),
                Text(
                  'TOTAL',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Rp 185.000',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  'Delivery Address',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          _buildAddress2('satu', 'Home', '(031) 555-024\nJl. Rajawali No. 02, Surabaya'),
          _buildAddress2('dua', 'Office', '(031) 555-024\nJl. Rajawali No. 02, Surabaya'),
          Container(
            padding: EdgeInsets.only(right: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.add, color: Color.fromRGBO(0, 165, 155, 1),),
                      Text(
                        'Add Address',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
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
            child: Row(
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.all(20),
              width: 330,
              // height: MediaQuery.of(context).size.height,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10),),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildPayment('assets/images/profile.png', 'OVO', 'OVO'),
                  _buildPayment('assets/images/profile.png', 'Dana', 'Dana'),
                  _buildPayment('assets/images/profile.png', 'ShopeePay', 'ShopeePay'),
                  _buildPayment('assets/images/profile.png', 'GoPay', 'GoPay'),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(20),
            child: Container(
              width: 360,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => successCheckOut()),
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
          ),
        ],
      ),
    );
  }

  Widget _buildPayment(String imagePath, String title, String value){
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6),),
            border: Border.all(width: 1, color: Colors.grey,),
          ),
          child: Image.asset(imagePath),
        ),
        SizedBox(width: 16,),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Radio(
          value: value,
          groupValue: _selectedPayment,
          onChanged: (value){setState(() {
            _selectedPayment = value;
          },
          );},
          activeColor: Color.fromRGBO(0, 165, 155, 1),
        ),
      ],
    );
  }

  Widget _buildAddress2 (String value, String title, String subTitle){
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
      color: Colors.white,
      child: Container(
        width: 330,
        height: 90,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(10),),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Radio(
                value: value,
                groupValue: _selectedAddress,
                onChanged: (value){setState(() {
                  _selectedAddress = value;
                },
                );},
              activeColor: Color.fromRGBO(0, 165, 155, 1),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                ),
                Text(
                  subTitle,
                ),
              ],
            ),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.mode_edit_outline_outlined, color: Colors.grey,))
          ],
        ),
      ),
    );
  }
}

class successCheckOut extends StatefulWidget {
  const successCheckOut({super.key});

  @override
  State<successCheckOut> createState() => _successCheckOutState();
}

class _successCheckOutState extends State<successCheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20,),
            Image.asset('assets/images/Success.png'),
            SizedBox(height: 20,),
            Container(
              width: 260,
              child: Text(
                'Thank You',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 250,
              child: Text(
                'Your Order will be delivered with invoice #INV20240817. You can track the delivery in the order section.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => utama()),
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
                        'Continue Order',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(height: 26,),
          ],
        ),
      ),
    );
  }
}
