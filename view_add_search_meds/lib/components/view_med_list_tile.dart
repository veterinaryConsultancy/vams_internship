///Importing packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../data.dart';

///creating stateful widget for displaying medicine details
class ViewMedListTile extends StatefulWidget {
  final String name;
  final String img;
  final int qty;
  final double price;
  final String retailer;
  final double ht;
  final double w;
  final double tf;
  final int index;
  ViewMedListTile({
    this.name,
    this.retailer,
    this.img,
    this.price,
    this.qty,
    @required this.ht,
    @required this.w,
    @required this.tf,
    @required this.index,
  });
  @override
  _ViewMedListTileState createState() => _ViewMedListTileState();
}

class _ViewMedListTileState extends State<ViewMedListTile> {
  ///state of the listTile whether is removed/closed or not
  bool isRemoved = false;

  ///initial quantity of all the medicines
  int quant = 0;
  var txtEdit = TextEditingController();

  ///Object of class containing data
  MedsListData u = MedsListData();
  @override
  void initState() {
    // TODO: implement initState
    txtEdit.text = '$quant';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///if isRemoved is true the list Tile is removed
    if (isRemoved)
      return Container();
    else {
      ///UI
      return Stack(
        children: [
          Container(
            height: widget.ht * 0.2,
            width: widget.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
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
                  margin: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  height: widget.ht * 0.17,
                  width: widget.ht * 0.15,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.img),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: 6 * widget.tf,
                  ),
                  height: widget.ht * 0.17,
                  width: widget.w * 0.63,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.name,
                                style: TextStyle(
                                  fontFamily: 'Lato-Thin.ttf',
                                  fontSize: 17 * widget.tf,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff454545),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: ('Seller - ${widget.retailer}\n'),
                                      style: TextStyle(
                                        fontFamily: 'Lato-Thin.ttf',
                                        fontSize: 12 * widget.tf,
                                        color: Color(0xffafafaf),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ('Rs ${widget.price.round()}\t\t\t\t'),
                                      style: TextStyle(
                                        fontFamily: 'Lato-Thin.ttf',
                                        fontSize: 18 * widget.tf,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff454545),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ('REMOVE'),
                                      style: TextStyle(
                                        fontFamily: 'Lato-Thin.ttf',
                                        fontSize: 10 * widget.tf,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff454545),
                                      ),

                                      ///adding button functionality to text
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          setState(
                                            () {
                                              isRemoved = true;
                                            },
                                          );
                                        },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 15 * widget.tf,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.zero,
                                    child: Text(
                                      'Add Qty',
                                      style: TextStyle(
                                        fontSize: 7.5 * widget.tf,
                                        color: Color(0xffafafaf),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4 * widget.tf,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          tapChange(
                                              CupertinoIcons.minus_circle);
                                        },
                                        child: Icon(
                                          CupertinoIcons.minus_circle,
                                          color: Colors.black,
                                          size: 15 * widget.tf,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3 * widget.tf,
                                      ),
                                      Container(
                                        child: Center(
                                          child: TextFormField(
                                            controller: txtEdit,
                                            onChanged: (String val) {
                                              setState(
                                                () {
                                                  txtEdit.text = val;
                                                  quant = int.parse(val);
                                                  txtEdit.selection =
                                                      TextSelection
                                                          .fromPosition(
                                                    TextPosition(
                                                      offset:
                                                          txtEdit.text.length,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                              fontSize: 12 * widget.tf,
                                            ),
                                            cursorRadius: Radius.circular(2),
                                            decoration: InputDecoration(
                                              isDense: true,
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                1,
                                                1,
                                                1,
                                                0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        height: widget.ht * 0.05,
                                        width: widget.w * 0.075,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3 * widget.tf,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          tapChange(CupertinoIcons.plus_circle);
                                        },
                                        child: Icon(
                                          CupertinoIcons.plus_circle,
                                          color: Colors.black,
                                          size: 15 * widget.tf,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isRemoved = true;
                });
              },
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
                child: Center(
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

  void tapChange(IconData icon) {
    if (icon == CupertinoIcons.plus_circle)
      setState(() {
        ///increasing quantity by 1
        quant++;

        ///updating text field
        txtEdit.text = '$quant';

        ///updating bill item quantity
        u.chosenItems.values
            .elementAt(widget.index)
            .update('quantity', (value) => quant, ifAbsent: () => 0);

        ///printing the values
        print('int val=$quant');
        print(
            'updated qty=${u.chosenItems.values.elementAt(widget.index).values}');
      });
    else
      setState(() {
        ///decreasing quantity by 1
        quant--;

        ///updating text field
        txtEdit.text = '$quant';

        ///updating bill item quantity
        u.chosenItems.values
            .elementAt(widget.index)
            .update('quantity', (value) => quant, ifAbsent: () => 0);

        ///printing the values
        print('int val=$quant');
        print(
            'updated qty=${u.chosenItems.values.elementAt(widget.index).values}');
      });
  }
}
