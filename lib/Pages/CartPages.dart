import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: screenWidth * 0.06, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Menggunakan Navigator.pop untuk kembali
          },
        ),
        title: Text(
          'Keranjang',
          style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.05),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Item Burger
            itemCard(context, 'Pizza', 'assets/images/posterpizza2.jpg', 'Rp. 100.000', screenWidth),
            // Item Ice Cream
            itemCard(context, 'Burger', 'assets/images/Burger.jpg', 'Rp. 40.000', screenWidth),
            // Item Pizza
            itemCard(context, 'Minuman', 'assets/images/Minuman.jpg', 'Rp. 100.000', screenWidth),
            // Ringkasan Belanja
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: 30),
              child: Container(
                padding: EdgeInsets.all(screenWidth * 0.05),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ringkasan Belanja:",
                            style: TextStyle(
                                fontSize: screenWidth * 0.05, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black),
                    summaryRow("PPN 13%", "Rp. 15.000", screenWidth),
                    summaryRow("Total Sebelum Pajak", "Rp. 235.000", screenWidth),
                    Divider(color: Colors.black),
                    summaryRow("Total Belanja", "Rp. 250.000", screenWidth),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemCard(BuildContext context, String itemName, String imagePath, String price, double screenWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: screenWidth * 0.05),
      child: Container(
        width: double.infinity,
        height: screenWidth * 0.25, // Responsif berdasarkan lebar layar
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                imagePath,
                height: screenWidth * 0.2, // Responsif berdasarkan lebar layar
                width: screenWidth * 0.3, // Responsif berdasarkan lebar layar
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          itemName,
                          style: TextStyle(
                              fontSize: screenWidth * 0.045, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.delete, color: Colors.red, size: screenWidth * 0.06),
                      ],
                    ),
                    Text(price, style: TextStyle(fontSize: screenWidth * 0.04)),
                    Row(
                      children: [
                        Icon(Icons.remove_circle, color: Colors.green, size: screenWidth * 0.06),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: screenWidth * 0.04),
                          ),
                        ),
                        Icon(Icons.add_circle, color: Colors.green, size: screenWidth * 0.06),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget summaryRow(String label, String amount, double screenWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: screenWidth * 0.045)),
          Text(amount, style: TextStyle(fontSize: screenWidth * 0.045)),
        ],
      ),
    );
  }
}
