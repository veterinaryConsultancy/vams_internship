// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:medicine_inventory/controller/inventory_controller.dart';
import 'package:medicine_inventory/screen/inventory_list_page.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => InventoryController(),
        ),
      ],
      child: GetMaterialApp(
          home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const SomethingWentWrong();
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return const InventoryListPage();
          }

          return const Scaffold(
            body: CircularProgressIndicator(),
          );
        },
      )),
    );
  }
}

//something went wrong
class SomethingWentWrong extends StatelessWidget {
  const SomethingWentWrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Something went wrong'),
      ),
    );
  }
}
