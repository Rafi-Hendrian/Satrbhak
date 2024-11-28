import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllFoodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // All Category
          _buildCategoryItem(
            context,
            imagePath: 'assets/images/Burger.jpg',
            label: 'All',
            backgroundColor: const Color.fromARGB(255, 32, 100, 196),
          ),
          // Makanan Category
          _buildCategoryItem(
            context,
            imagePath: 'assets/images/posterpizza1.jpg',
            label: 'Makanan',
          ),
          // Minuman Category
          _buildCategoryItem(
            context,
            imagePath: 'assets/images/Minuman.jpg',
            label: 'Minuman',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context,
      {required String imagePath, required String label, Color? backgroundColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
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
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8), // Adjusted height
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
