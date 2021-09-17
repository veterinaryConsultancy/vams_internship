///Importing packages
import 'package:flutter/material.dart';

///creating stateful widget for displaying medicine details
class MedTile extends StatefulWidget {
  final String productName;
  final String productType;
  final int quantity;
  final double unitPrice;
  final String status;
  final String retailer;
  final double deviceWt;
  final double deviceHt;
  final double txtFact;
  MedTile(
      {this.productName,
      this.productType,
      this.quantity,
      this.unitPrice,
      this.status,
      this.retailer,
      @required this.deviceWt,
      @required this.deviceHt,
      @required this.txtFact});

  @override
  _MedTileState createState() => _MedTileState();
}

class _MedTileState extends State<MedTile> {
  ///variable to store state of check box
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    ///UI
    return Container(
      width: widget.deviceWt,
      height: widget.deviceHt * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10 * widget.txtFact),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(1, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 1 * widget.txtFact),
            width: 40,
            child: FittedBox(
              child: Checkbox(
                value: isSelected,
                onChanged: (value) {
                  setState(() {
                    isSelected = value;
                  });
                },
              ),
            ),
          ),
          Container(
            width: widget.deviceWt * 0.55,
            height: widget.deviceHt * 0.11,
            padding: EdgeInsets.symmetric(
              vertical: 3 * widget.txtFact,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productName,
                  style: TextStyle(
                    color: Color(0xff727272),
                    fontFamily: 'Lato-Thin',
                    fontSize: 18 * widget.txtFact,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product Type - ${widget.productType}',
                              style: TextStyle(
                                color: Color(0xff727272),
                                fontFamily: 'Lato-thin',
                                fontSize: 11 * widget.txtFact,
                                letterSpacing: -1.2,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xff727272),
                                  fontFamily: 'Lato-thin',
                                  fontSize: 11 * widget.txtFact,
                                  letterSpacing: -1.2,
                                ),
                                children: [
                                  TextSpan(text: 'Quantity - '),
                                  TextSpan(
                                    text: '${widget.quantity}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xff727272),
                                  fontFamily: 'Lato-thin',
                                  fontSize: 11 * widget.txtFact,
                                  letterSpacing: -1.2,
                                ),
                                children: [
                                  TextSpan(text: 'Unit Price - '),
                                  TextSpan(
                                    text: 'Rs ${widget.unitPrice.round()}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  color: Color(0xff727272),
                                  fontFamily: 'Lato-thin',
                                  fontSize: 11 * widget.txtFact,
                                  letterSpacing: -1.2,
                                ),
                                children: [
                                  TextSpan(text: 'Status - '),
                                  TextSpan(
                                    text: widget.status,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: widget.status == 'Available'
                                          ? Color(0xff348026)
                                          : Color(0xffcc4043),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: widget.deviceWt * 0.18,
            height: widget.deviceHt * 0.1,
            child: widget.status == 'Available'
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 35 * widget.txtFact,
                        height: 35 * widget.txtFact,
                        child: Image.asset(
                          'images/shopping-bag.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 2 * widget.txtFact,
                      ),
                      Text(
                        'ADD PRODUCT',
                        style: TextStyle(
                          fontSize: 6,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff348026),
                        ),
                      )
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          'images/open-box.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
          )
        ],
      ),
    );
  }
}
