import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/DataModel.dart';

class EmployeeService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Employee>> getAllEmployees() async {
    QuerySnapshot querySnapshot = await _firestore.collection('Employee').get();
    return querySnapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return Employee(
        id: doc.id,
        name: data['name'],
        domain: data['domain'],
        joinDate: data['joinDate'].toDate(),
        isActive: data['isActive'],
        imageUrl: data['imageUrl'].toString()
      );
    }).toList();
  }
}
