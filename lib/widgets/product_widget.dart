import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        padding: const EdgeInsets.only(left: 5, right: 0, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 120,
        // width: 358,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(13.0),
              child: Image.network(
                'https://els.id/media/catalog/product/cache/31f3c0b07cbf4027df3ecbd24b5c34ea/h/p/hp_pavilion_14_gold_2.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'HP Pavilion',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const Text(
                    'HP',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 91, 151, 255),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Buy',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 70, bottom: 60),
              child: Icon(
                Icons.delete_outline_outlined,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
