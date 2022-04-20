import 'package:flutter/material.dart';
import 'package:pertemuan2/widgets/product_widget.dart';

class ListGrid extends StatelessWidget {
  const ListGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: 16,
        itemBuilder: (context, index) => const ProductView(),
      ),
    );
  }
}
