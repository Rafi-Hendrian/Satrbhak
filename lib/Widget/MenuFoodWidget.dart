import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuFoodWidget extends StatelessWidget {
  const MenuFoodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(
          children: [
            // Baris pertama
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildMenuItem(
                  context,
                  imagePath: 'assets/images/Burger.jpg',
                  title: 'Burger King ',
                  price: 'RP. 40.000,00',
                ),
                buildMenuItem(
                  context,
                  imagePath: 'assets/images/posterpizza2.jpg',
                  title: 'Pizza Hut Medium',
                  price: 'RP. 50.000,00',
                ),
              ],
            ),
            // Baris kedua
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildMenuItem(
                  context,
                  imagePath: 'assets/images/Burger.jpg',
                  title: 'Burger King',
                  price: 'RP. 350.000,00',
                ),
                buildMenuItem(
                  context,
                  imagePath: 'assets/images/Minuman.jpg',
                  title: 'Coca Cola',
                  price: 'RP. 3.500,00',
                ),
              ],
            ),
            // Baris ketiga
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildMenuItem(
                  context,
                  imagePath: 'assets/images/posterpizza2.jpg',
                  title: '',
                  price: 'RP. 50.000.00',
                ),
                buildMenuItem(
                  context,
                  imagePath: 'assets/images/Burger.jpg',
                  title: 'Burger King Medium',
                  price: 'RP. 50.000,00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, {
    required String imagePath,
    required String title,
    required String price,
  }) {
    return Container(
      width: 170,
      height: 210,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Icon(
                  Icons.add_circle,
                  color: Colors.green,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
