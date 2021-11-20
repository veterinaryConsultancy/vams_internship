import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CloudFirestoreHelper {
  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  static final CollectionReference inventory =
      FirebaseFirestore.instance.collection('inventory');

  static final CollectionReference medicine =
      FirebaseFirestore.instance.collection('medicine');

  Future getAllMedicine() async {
    List data = [];

    await inventory.get().then((QuerySnapshot value) {
      for (var element in value.docs) {
        data.add(element.data());
      }
    });

    return data;
  }

  addMedicine(Map data) async {
    await inventory.add(data).then((value) {
      Get.showSnackbar(GetBar(
        title: "Medicine added",
        message: "successful",
        duration: const Duration(seconds: 1),
      ));
    }).catchError((error) {
      Get.showSnackbar(GetBar(
        title: "Error adding medicine",
        message: error.toString(),
        duration: const Duration(seconds: 1),
      ));
    });
  }

  addMedicineToList(String name) {
    medicine.doc("medicine").get().then(
      (value) {
        List data = value['medicine_list'] ?? [];
        data.add(name);
        medicine.doc("medicine").set({'medicine_list': data}).then(
          (value) {
            Get.showSnackbar(
              GetBar(
                title: "Medicine list updated",
                message: "successful",
                duration: const Duration(seconds: 1),
              ),
            );
          },
        );
      },
    );
  }
}
