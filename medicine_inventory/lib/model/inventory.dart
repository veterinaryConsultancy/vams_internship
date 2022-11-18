import 'package:cloud_firestore/cloud_firestore.dart';

class Inventory {
  String? authorizedBy;
  String? code_value;
  String? description;
  DateTime? expiryDate;
  String? hospitalId;
  Timestamp? listedTimeStamp;
  String? mobile;
  String? productName;
  String? productType;
  int? quantity;
  String? status;
  String? unitCost;

  Inventory({
    this.authorizedBy,
    this.code_value,
    this.description,
    this.expiryDate,
    this.hospitalId,
    this.listedTimeStamp,
    this.mobile,
    this.productName,
    this.productType,
    this.quantity,
    this.status,
    this.unitCost,
  });

  factory Inventory.fromJson(json) {
    return Inventory(
      authorizedBy: json['authorizedBy'],
      code_value: json['code_value'],
      description: json['description'],
      expiryDate: DateTime.parse(json['expiryDate']),
      hospitalId: json['hospitalId'],
      listedTimeStamp: json['listedTimeStamp'],
      mobile: json['mobile'],
      productName: json['productName'],
      productType: json['productType'],
      quantity: json['quantity'],
      status: json['status'],
      unitCost: json['unitCost'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'authorizedBy': authorizedBy,
      'code_value': code_value,
      'description': description,
      'expiryDate': expiryDate!.toIso8601String(),
      'hospitalId': hospitalId,
      'listedTimeStamp': listedTimeStamp!.toDate().toIso8601String(),
      'mobile': mobile,
      'productName': productName,
      'productType': productType,
      'quantity': quantity,
      'status': status,
      'unitCost': unitCost,
    };
  }
}
