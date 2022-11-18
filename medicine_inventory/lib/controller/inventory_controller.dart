import 'package:flutter/material.dart';
import 'package:medicine_inventory/api/firebase_storage.dart';
import 'package:medicine_inventory/model/inventory.dart';

class InventoryController extends ChangeNotifier {
  bool isLoading = false;
  List<Inventory> _inventoryList = [];
  List<Inventory> _expiredInventoryList = [];
  final CloudFirestoreHelper _cloudFirestoreHelper = CloudFirestoreHelper();
  List<Inventory> get inventoryList => _inventoryList;
  List<Inventory> get expiredInventoryList => _expiredInventoryList;

  //start loading
  void startLoading() {
    isLoading = true;
    notifyListeners();
  }

  //stop loading
  void stopLoading() {
    isLoading = false;
    notifyListeners();
  }

  void addInventory(Inventory inventory) async {
    startLoading();
    await _cloudFirestoreHelper.addMedicine(inventory.toJson());
    await getInventoryList();
    stopLoading();
    notifyListeners();
  }

  //get inventory list
  Future<void> getInventoryList() async {
    startLoading();
    _inventoryList = [];
    List<dynamic> documents = await _cloudFirestoreHelper.getAllMedicine();

    for (var document in documents) {
      _inventoryList.add(Inventory.fromJson(document));
    }
    stopLoading();
    notifyListeners();
  }

  void removeInventory(Inventory inventory) {
    _inventoryList.remove(inventory);
    notifyListeners();
  }

  void checkExpiryItem() {
    _expiredInventoryList = [];
    for (var element in _inventoryList) {
      if (element.expiryDate!
              .isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
          element.expiryDate!
              .isBefore(DateTime.now().add(const Duration(days: 8)))) {
        _expiredInventoryList.add(element);
      }
    }
    notifyListeners();
  }
}
