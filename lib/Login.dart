import 'package:flutter/material.dart';
import 'package:medhub/NavBar.dart';
import 'package:medhub/Register.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();

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
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30,),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24,),
            SizedBox(height: 16,),
            Container(
              width: 350,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color.fromRGBO(9, 15, 71, 0.35)),
                        hintText: 'Username',
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person_2_outlined),
                        prefixIconColor: Color.fromRGBO(9, 15, 71, 1),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(9, 15, 71, 0.35)),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter username';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color.fromRGBO(9, 15, 71, 0.35)),
                        hintText: 'Password',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock_outlined),
                        prefixIconColor: Color.fromRGBO(9, 15, 71, 1),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(9, 15, 71, 0.35)),
                        ),
                        suffixIcon: TextButton(
                            onPressed: (){},
                            child: Text(
                                'Forgot?',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(9, 15, 71, 0.45),
                              ),
                            ),
                        ),
                        suffixIconColor: Color.fromRGBO(9, 15, 71, 0.45)
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 56,),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => utama()),
                      );
                    }
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
                        'SIGN IN',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don`t have an account? ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(9, 15, 71, 0.45)
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => register()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromRGBO(9, 15, 71, 0.45)
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}