import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medhub/Login.dart';
import 'package:medhub/Register.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    // Menjadwalkan pergantian halaman secara otomatis setelah 2 detik saat di halaman 0
    Timer(Duration(seconds: 2), () {
      if (_currentPage == 0) {
        _pageController.nextPage(
          duration: Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page){
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              Center(
                child: Image.asset(
                  'assets/images/LogoMedhub.png',
                  height: 134,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 140,),
                  Image.asset(
                    'assets/images/Splash1.png',
                    height: 283,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 238,
                    child: Text('View and buy '
                        'Medicine online',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 255,
                    child: Text('Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 140,),
                  Image.asset(
                    'assets/images/Splash2.png',
                    height: 283,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 238,
                    child: Text('Online medical & Healthcare',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 255,
                    child: Text('Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 115,),
                  Image.asset(
                    'assets/images/Splash3.png',
                    height: 283,
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('Welcome to ',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 166, 41, 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        width: 102,
                        height: 32,
                        child: Text('MedHub',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 255,
                    child: Text('Do you want some help with your health to get better life?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 311,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => register()),
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
                              'SIGN UP WITH EMAIL',
                              style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 311,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Color.fromRGBO(9, 15, 71, 0.1)),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/Facebook.png', height: 18,width: 18,),
                            SizedBox(width: 10,),
                            Text(
                              'CONTINUE WITH FACEBOOK',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Color.fromRGBO(9, 15, 71, 0.75)
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 311,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Color.fromRGBO(9, 15, 71, 0.1)),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/Google.png', height: 16,width: 16,),
                            SizedBox(width: 10,),
                            Text(
                              'CONTINUE WITH GMAIL',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13,
                                  color: Color.fromRGBO(9, 15, 71, 0.75)
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 311,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => login()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13,
                                  color: Color.fromRGBO(9, 15, 71, 0.75)
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
          if (_currentPage != 3 && _currentPage != 0)
            Positioned(
              bottom: 30,
              left: 38,
              child: TextButton(
                onPressed: (){
                  _pageController.jumpToPage(3);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(9, 15, 71, 0.45),
                  ),
                ),
              ),
            ),
          if (_currentPage != 3 && _currentPage != 0)
            Positioned(
            left: 0,
            right: 0,
            bottom: 36,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(
                  dotColor: Color.fromRGBO(196, 196, 196, 1),
                  activeDotColor: Color.fromRGBO(0, 165, 155, 1),
                  dotHeight: 5.0,
                  dotWidth: 5.0,
                  spacing: 10,
                ),
              ),
            ),
          ),
          if (_currentPage != 3 && _currentPage != 0)
            Positioned(
            bottom: 30,
            right: 38,
            child: TextButton(
            onPressed: (){
              _pageController.nextPage(
                duration: Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'Next',
              style: TextStyle(
                  fontSize:14,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 165, 155, 1)
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
