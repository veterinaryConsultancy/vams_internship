///Importing required packages
import 'package:flutter/material.dart';
import 'screens/meds_list.dart';
import 'screens/view_meds.dart';

///main function with routes
void main() {
  runApp(
    MaterialApp(
      routes: {
        MedsListHome.id: (context) => MedsListHome(),
        MedsView.id: (context) => MedsView(),
      },
      initialRoute: MedsListHome.id,
      debugShowCheckedModeBanner: false,
    ),
  );
}
