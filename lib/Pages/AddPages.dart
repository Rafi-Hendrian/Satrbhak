import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbhak/Pages/CreatePage.dart';
import 'package:starbhak/Widget/NavbarWidget.dart';
import 'package:starbhak/Pages/HomePage.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Navbarwidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(screenWidth * 0.02),
                shape: CircleBorder(),
                backgroundColor: Colors.white,
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              child: Icon(Icons.chevron_left, size: screenWidth * 0.08, color: Colors.black),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(screenWidth * 0.02),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Icon(CupertinoIcons.person),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: screenWidth * 0.05),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Foto",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Nama Produk",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Harga",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Aksi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenWidth * 0.02),
          Divider(color: Colors.grey, thickness: 1),
          SizedBox(height: screenWidth * 0.01),
          productRow(context, 'assets/images/Burger.jpg', "Burger King Medium", "Rp.50.000,00"),
          Divider(color: Colors.grey, thickness: 1),
          productRow(context, 'assets/images/Minuman.jpg', "Teh Botol", "Rp.5.000,00"),
          Divider(color: Colors.grey, thickness: 1),
          productRow(context, 'assets/images/Keyboard.jpg', "Burger King Small", "Rp.350.000,00"),
        ],
      ),
    );
  }

  Widget productRow(BuildContext context, String imagePath, String name, String price) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.02),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox.fromSize(
                size: Size(screenWidth * 0.15, screenWidth * 0.15),
                child: Image.network(imagePath, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(width: screenWidth * 0.05),
          Expanded(
            flex: 3,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.035,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              price,
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.035,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Icon(CupertinoIcons.trash, size: screenWidth * 0.05, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
