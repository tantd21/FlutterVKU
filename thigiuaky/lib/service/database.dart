import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethod{
  Future addEmployeeDetails(Map<String, dynamic> employeeInfoMap, String id) async{
return await FirebaseFirestore.instance.collection("Employee").doc(id).set(employeeInfoMap);
  }


  Future<Stream<QuerySnapshot>> getEmployeeDetails()async{
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }

  Future updateEmployeeDetails(String id, Map<String, dynamic> updateInfo)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).update(updateInfo);
  }

   Future deleteEmployeeDetails(String id)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).delete();
  }
}