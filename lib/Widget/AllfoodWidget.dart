import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AllFoodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;

    // Menentukan ukuran responsif berdasarkan lebar layar
    final imageSize = screenWidth * 0.15; // Ukuran gambar responsif
    final paddingHorizontal = screenWidth * 0.05; // Padding horizontal responsif

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: paddingHorizontal),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // All Category
          _buildCategoryItem(
            context,
            imagePath: 'assets/images/Burger.jpg',
            label: 'All',
            imageSize: imageSize,
            backgroundColor: const Color.fromARGB(255, 32, 100, 196),
          ),
          // Makanan Category
          _buildCategoryItem(
            context,
            imagePath: 'assets/images/posterpizza1.jpg',
            label: 'Makanan',
            imageSize: imageSize,
          ),
          // Minuman Category
          _buildCategoryItem(
            context,
            imagePath: 'assets/images/Minuman.jpg',
            label: 'Minuman',
            imageSize: imageSize,
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(
    BuildContext context, {
    required String imagePath,
    required String label,
    required double imageSize,
    Color? backgroundColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10), // Padding tetap
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(imageSize * 0.2), // Padding responsif
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                width: imageSize,
                height: imageSize,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8), // Jarak antara gambar dan label
          Text(
            label,
            style: TextStyle(fontSize: imageSize * 0.2), // Ukuran font responsif
          ),
        ],
      ),
    );
  }
}
