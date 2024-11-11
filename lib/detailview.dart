import 'package:example_api/makananmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Category category = Get.arguments; // Menerima data dari navigasi

    return Scaffold(
      appBar: AppBar(
        title: Text(category.idCategory),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'makanan: ${category.strCategory}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            
            Text(
              'Description:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              category.strCategoryDescription ?? "No description available",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 8),
            
          ],
        ),
      ),
    );
  }
}