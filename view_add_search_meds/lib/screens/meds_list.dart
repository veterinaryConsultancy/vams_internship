///Importing packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vams_search_add/data.dart';
import 'package:vams_search_add/components/meds_List_tiles.dart';
import 'package:vams_search_add/screens/view_meds.dart';

class MedsListHome extends StatelessWidget {
  ///creating the route name
  static const String id = 'Meds Search';

  @override
  Widget build(BuildContext context) {
    ///Getting device height, width and text Scale Factor for better responsiveness
    final deviceHt = MediaQuery.of(context).size.height;
    final deviceWt = MediaQuery.of(context).size.width;
    final txtFact = MediaQuery.of(context).textScaleFactor;
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: deviceWt * 0.2,
                      height: deviceHt * 0.045,
                      decoration: BoxDecoration(
                        color: Color(0xff2c45e8),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8 * txtFact),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15 * txtFact,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWt * 0.02,
                    ),
                    Container(
                      width: deviceWt * 0.2,
                      height: deviceHt * 0.045,
                      decoration: BoxDecoration(
                        color: Color(0xffcf141d),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8 * txtFact),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Delete',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15 * txtFact,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 15 * txtFact,
                    right: 8 * txtFact,
                  ),
                  margin: EdgeInsets.only(
                    top: deviceHt * 0.02,
                  ),
                  height: deviceHt * 0.075,
                  width: deviceWt,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(1, 1),
                        blurRadius: 3,
                      )
                    ],
                    border: Border.all(
                      color: Color(0xffcacaca),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10 * txtFact),
                    ),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 20 * txtFact,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search Medicines',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      icon: Icon(
                        CupertinoIcons.search,
                        size: 28 * txtFact,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width: deviceWt,
                  height: deviceHt * 0.45,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 8 * txtFact,
                      );
                    },
                    itemCount: m.invoiceData.length,
                    itemBuilder: (context, index) {
                      return MedTile(
                        deviceHt: deviceHt,
                        deviceWt: deviceWt,
                        txtFact: txtFact,
                        productName: m.invoiceData.entries
                            .elementAt(index)
                            .value
                            .entries
                            .elementAt(0)
                            .value,
                        productType: m.invoiceData.entries
                            .elementAt(index)
                            .value
                            .entries
                            .elementAt(1)
                            .value,
                        quantity: m.invoiceData.entries
                            .elementAt(index)
                            .value
                            .entries
                            .elementAt(2)
                            .value,
                        unitPrice: m.invoiceData.entries
                            .elementAt(index)
                            .value
                            .entries
                            .elementAt(3)
                            .value,
                        status: m.invoiceData.entries
                            .elementAt(index)
                            .value
                            .entries
                            .elementAt(4)
                            .value,
                        retailer: m.invoiceData.entries
                            .elementAt(index)
                            .value
                            .entries
                            .elementAt(5)
                            .value,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10 * txtFact,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MedsView.id);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    width: deviceWt * 0.7,
                    height: deviceHt * 0.08,
                    decoration: BoxDecoration(
                      color: Color(0xffe64109),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20 * txtFact),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            CupertinoIcons.bag,
                            color: Colors.white,
                            size: 30 * txtFact,
                          ),
                          Container(
                            width: 32 * txtFact,
                            height: 32 * txtFact,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                '${m.invoiceData.length}',
                                style: TextStyle(
                                  color: Color(0xff2c45e8),
                                  fontSize: 22 * txtFact,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'VIEW PRODUCT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18 * txtFact,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
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
              SizedBox(
                height: deviceHt * (1 - 0.12 - 0.1),
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
