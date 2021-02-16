///Gradient Container Button
///Importing Required classes and packages

import 'package:flutter/material.dart';

class GradContainer extends StatelessWidget {
  ///Display Fields of Button
  final String t1;
  final String t2;
  final String img;
  final String t3;
  final List<Color> col;
  GradContainer({this.img, this.t1, this.t2, this.col, this.t3});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //TODO: Add Functionality to button
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width * 0.37,
        height: MediaQuery.of(context).size.width * 0.33,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: Offset(1, 2),
              blurRadius: 6,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: col,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),

        ///Contents arranged in a Stacked manner
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                t2 != 'Record'
                    ? Image(
                        image: AssetImage(
                          img,
                        ),
                        width: 60,
                        height: 60,
                      )
                    : Container(
                        width: 50,
                        height: 60,
                        child: Image(
                          image: AssetImage(
                            img,
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.08,
                ),
                Row(
                  children: [
                    Text(
                      t1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rooboto',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      t2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rooboto',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    t3 != null
                        ? Text(
                            t3,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rooboto',
                            ),
                          )
                        : t1 == 'Book'
                            ? SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.04,
                              )
                            : SizedBox(
                                height: 0,
                              ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'images/next-button.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
