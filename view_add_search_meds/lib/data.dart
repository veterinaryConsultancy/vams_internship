class MedsListData {
  ///Medicine List with details (1st screen List Items)
  var invoiceData = {
    'item1': {
      'product Name': 'Dolo 650 Tablet',
      'productType': 'Tablet',
      'quantity': 10,
      'unitPrice': 30.0,
      'status': 'Available',
      'retailer': 'Micro Labs Ltd',
    },
    'item2': {
      'product Name': 'Volini Spray',
      'productType': 'Spray',
      'quantity': 0,
      'unitPrice': 30.0,
      'status': 'Out of Stock',
      'retailer': 'VAMS Labs Ltd',
    },
    'item3': {
      'product Name': 'Paracetamol Tablet',
      'productType': 'Tablet',
      'quantity': 5,
      'unitPrice': 30.0,
      'status': 'Only a Few',
      'retailer': 'Micro Labs Ltd',
    },
  };

  ///Images of each medicine
  List images = [
    'images/Dolo.jpg',
    'images/volini-spray.jpg',
    'images/paracetamol.jpg',
  ];

  ///Medicine list to be displayed in the 2nd screen
  var chosenItems = {
    'item1': {
      'product Name': 'Dolo 650 Tablet',
      'productType': 'Tablet',
      'quantity': 10,
      'unitPrice': 30.0,
      'status': 'Available',
      'retailer': 'Micro Labs Ltd',
      'img': 'images/Dolo.jpg',
    },
    'item2': {
      'product Name': 'Volini Spray',
      'productType': 'Spray',
      'quantity': 0,
      'unitPrice': 30.0,
      'status': 'Out of Stock',
      'retailer': 'VAMS Labs Ltd',
      'img': 'images/volini-spray.jpg',
    },
    'item3': {
      'product Name': 'Paracetamol Tablet',
      'productType': 'Tablet',
      'quantity': 5,
      'unitPrice': 30.0,
      'status': 'Only a Few',
      'retailer': 'Micro Labs Ltd',
      'images': 'images/paracetamol.jpg'
    },
  };

  ///Updation list where quantity is updated for medicines in above list
  var billItems = {};
}
