///Quick Link Button
///Importing Required classes
import 'package:flutter/material.dart';

class QuickLinkButton extends StatelessWidget {
  ///Image and label to be displayed
  final String img;
  final String txt;
  QuickLinkButton({this.img, this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: txt == 'Payment History' || txt == 'Book Vaccination'
          ? MediaQuery.of(context).size.width * 0.28
          : MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        children: [
          GestureDetector(
            //TODO: Add Functionality to button
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.16),
                    offset: Offset(0, 3),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Center(
                child: Image.asset(
                  img,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.03,
          ),
          Text(
            txt,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 12,
              fontFamily: 'Rubik',
            ),
          )
        ],
      ),
    );
  }
}
