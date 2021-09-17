///Import packages
import 'package:flutter/material.dart';
import 'package:vams_search_add/components/view_med_list_tile.dart';
import '../data.dart';

class MedsView extends StatelessWidget {
  ///creating the route name
  static const String id = 'Meds View Screen';
  @override
  Widget build(BuildContext context) {
    ///Getting device height, width and text Scale Factor for better responsiveness
    final deviceHt = MediaQuery.of(context).size.height;
    final deviceWt = MediaQuery.of(context).size.width;
    final txtFact = MediaQuery.of(context).textScaleFactor;
    final ht = MediaQuery.of(context).size.height * 0.74;
    MedsListData m = MedsListData();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF1F1F1),

      ///UI
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: deviceHt * 0.16,
              left: deviceWt * 0.06,
              right: deviceWt * 0.06,
              bottom: deviceHt * 0.1,
            ),
            width: deviceWt,
            height: deviceHt,

            ///components
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: deviceWt * 0.15,
                  ),
                  padding: EdgeInsets.all(
                    6 * txtFact,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12 * txtFact,
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage(
                          'images/drugs.png',
                        ),
                        size: 28 * txtFact,
                        color: Color(0xff0d354f),
                      ),
                      SizedBox(
                        width: 4 * txtFact,
                      ),
                      Text(
                        'PRODUCT DETAILS',
                        style: TextStyle(
                          color: Color(0xff0d354f),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ht * 0.02,
                ),
                Container(
                  height: ht * 0.68,
                  width: deviceWt,

                  ///List of Medicines
                  child: ListView.separated(
                      reverse: false,
                      itemBuilder: (context, index) {
                        return ViewMedListTile(
                          index: index,
                          ht: ht,
                          w: deviceWt,
                          tf: txtFact,
                          name: m.invoiceData.values
                              .elementAt(index)
                              .values
                              .elementAt(0),
                          img: m.images.elementAt(index),
                          qty: m.invoiceData.values
                              .elementAt(index)
                              .values
                              .elementAt(2),
                          price: m.invoiceData.values
                              .elementAt(index)
                              .values
                              .elementAt(3),
                          retailer: m.invoiceData.values
                              .elementAt(index)
                              .values
                              .elementAt(5),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 5 * txtFact,
                        );
                      },
                      itemCount: m.invoiceData.length),
                ),
                SizedBox(
                  height: ht * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    ///TODO: Function to generate bill
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    width: deviceWt * 0.55,
                    height: deviceHt * 0.08,
                    decoration: BoxDecoration(
                      color: Color(0xffe64109),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20 * txtFact),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'GENERATE BILL',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18 * txtFact,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: deviceHt * 0.12,
                width: deviceWt,
                color: Color(0xff2c45e8),
              ),
              Container(
                height: deviceHt * 0.1,
                width: deviceWt,
                color: Color(0xff2c45e8),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
