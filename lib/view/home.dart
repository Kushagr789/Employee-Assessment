import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/DataModel.dart';
import '../utils/employeeCard.dart';
import '../viewModel/homeViewModel.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Consumer<EmployeeProvider>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: provider.employees.length,
              itemBuilder: (context, index) {
                Employee employee = provider.employees[index];
                return EmployeeCard(employee: employee);
              },
            );
          }
        },
      ),
    );
  }
}
