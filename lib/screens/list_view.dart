import 'package:flutter/material.dart';
import 'package:pertemuan2/widgets/product_widget.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.notification_add,
          color: Color.fromARGB(255, 111, 164, 255),
        ),
        title: const Text(
          'Products',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 92, 151, 255),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductView();
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color.fromARGB(255, 97, 155, 255),
        label: const Text(
          'Add Product',
        ),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
