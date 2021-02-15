///Main Menu Screen
///Importing Required classes and packages

import 'package:flutter/material.dart';
import 'package:main_menu/components/gradient_container.dart';
import 'package:main_menu/components/quickLinkButton.dart';

class MainMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF437FF6),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/round_headshot.png',
                    width: 35,
                    height: 35,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Welcome, Arjun',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Roboto-Medium',
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  IconButton(
                    icon: Image.asset(
                      'images/bell.png',
                      width: 25,
                      height: 25,
                    ),
                    //TODO: Add Functionality to icon button
                    onPressed: () {},
                  ),
                  Positioned(
                    left: 28,
                    top: 10,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFB4D6A),
                      radius: 7,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          '12',
                          style: TextStyle(
                            fontSize: 6,
                            fontFamily: 'Roboto-Bold',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: Image.asset(
                  'images/shopping-cart white.png',
                  width: 25,
                  height: 25,
                ),
                //TODO: Add Functionality to icon button
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.08,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Colors.white,
                Color(0xFFF1F1F1),
                Color(0xFFEFF8F9),
              ],
            ),
          ),

          ///Contents arranged in scrollable column format
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width * 0.02,
                    top: MediaQuery.of(context).size.width * 0.04,
                  ),
                  child: Text(
                    'Get Your Veterinary Services Here',
                    style: TextStyle(
                      color: Color(0xFF707070),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nexa',
                    ),
                  ),
                ),

                ///Container to arrange the gradient container buttons
                Container(
                  ///Contents arranged in a table form
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GradContainer(
                            col: [
                              Color(0xFFFB2E75),
                              Color(0xFFFC2B72),
                              Color(0xFFF560AA),
                            ],
                            t1: 'Book',
                            t2: 'Treatment',
                            img: 'images/medical-tran.png',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          GradContainer(
                            col: [
                              Color(0xFF1EB3CB),
                              Color(0xFF50D3E2),
                              Color(0xFF50D3E2),
                            ],
                            t1: 'Build',
                            t2: 'Your Own',
                            t3: 'Farm',
                            img: 'images/barn-trans.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Row(
                        children: [
                          GradContainer(
                            col: [
                              Color(0xFFFC6B4D),
                              Color(0xFFF88144),
                              Color(0xFFF65A29),
                            ],
                            t1: 'Buy & Sell',
                            t2: 'Products',
                            img: 'images/shopping-cart white trans.png',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          GradContainer(
                            col: [
                              Color(0xFF43F685),
                              Color(0xFF2DDBA0),
                              Color(0xFF0CC183),
                            ],
                            t1: 'Treatment',
                            t2: 'Record',
                            img: 'images/health-report-trans.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width * 0.02,
                    top: MediaQuery.of(context).size.width * 0.04,
                  ),
                  child: Text(
                    'Quick Links',
                    style: TextStyle(
                      color: Color(0xFF707070),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nexa',
                    ),
                  ),
                ),

                ///Container to arrange the quick link buttons
                Container(
                  ///Contents arranged in a table form
                  child: Column(
                    children: [
                      Row(
                        children: [
                          QuickLinkButton(
                            txt: 'Add a Pet',
                            img: 'images/paw-print.png',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          QuickLinkButton(
                            txt: 'Buy Medicine',
                            img: 'images/medicine.png',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          QuickLinkButton(
                            txt: 'Book Vaccination',
                            img: 'images/syringe.png',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.003,
                      ),
                      Row(
                        children: [
                          QuickLinkButton(
                            txt: 'Health Checkup',
                            img: 'images/stethoscope.png',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          QuickLinkButton(
                            txt: 'Pet Insurance',
                            img: 'images/pets.png',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.03,
                          ),
                          QuickLinkButton(
                            txt: 'Payment History',
                            img: 'images/bill.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.008,
                )
              ],
            ),
          ),
        ),

        ///Bottom Navigation Bar with 3rd item selected
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,

          ///set to false to avoid raising of selected icon and additional padding accompanied by it
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/home.png',
                    width: 16,
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 6,
                        fontFamily: 'Rubik-Regular',
                        color: Color(0xFF8B8B8B),
                      ),
                    ),
                  ),
                ],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/shopping-bag.png',
                    width: 16,
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Store',
                      style: TextStyle(
                        fontSize: 6,
                        fontFamily: 'Rubik-Regular',
                        color: Color(0xFF8B8B8B),
                      ),
                    ),
                  ),
                ],
              ),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/phone-call.png',
                    width: 16,
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Phone Consultancy',
                      style: TextStyle(
                        fontSize: 6,
                        fontFamily: 'Rubik-Regular',
                        color: Color(0xFF8B8B8B),
                      ),
                    ),
                  ),
                ],
              ),
              label: 'Phone Consultancy',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/discount.png',
                    width: 16,
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Offer',
                      style: TextStyle(
                        fontSize: 6,
                        fontFamily: 'Rubik-Regular',
                        color: Color(0xFF8B8B8B),
                      ),
                    ),
                  ),
                ],
              ),
              label: 'Offer',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/account.png',
                    width: 16,
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'My Account',
                      style: TextStyle(
                        fontSize: 6,
                        fontFamily: 'Rubik-Regular',
                        color: Color(0xFF8B8B8B),
                      ),
                    ),
                  ),
                ],
              ),
              label: 'My Account',
            ),
          ],
        ),

        ///Floating action button to place over Bottom Navigation Bar
        floatingActionButton: Container(
          width: 50,
          height: 50,
          child: FloatingActionButton(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'images/phone-call.png',
              ),
            ),
            backgroundColor: Color(0xFF5B73EE),
            //TODO: Add Functionality to button
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}
