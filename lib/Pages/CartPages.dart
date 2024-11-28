import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 24, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Menggunakan Navigator.pop untuk kembali
          },
        ),
        title: Text(
          'Keranjang',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Item Burger
            itemCard(context, 'Pizza', 'assets/images/posterpizza2.jpg', 'Rp. 100.000'),
            // Item Ice Cream
            itemCard(context, 'Burger', 'assets/images/Burger.jpg', 'Rp. 40.000'),
            // Item Pizza
            itemCard(context, 'Minuman', 'assets/images/Minuman.jpg', 'Rp. 100.000'),
            // Ringkasan Belanja
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Container(
                padding: EdgeInsets.all(20),
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
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black),
                    summaryRow("PPN 13%", "Rp. 15.000"),
                    summaryRow("Total Sebelum Pajak", "Rp. 235.000"),
                    Divider(color: Colors.black),
                    summaryRow("Total Belanja", "Rp. 250.000"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemCard(BuildContext context, String itemName, String imagePath, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 100,
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
                height: 80,
                width: 150,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          itemName,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.delete, color: Colors.red),
                      ],
                    ),
                    Text(price, style: TextStyle(fontSize: 15)),
                    Row(
                      children: [
                        Icon(Icons.remove_circle, color: Colors.green, size: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text('1', style: TextStyle(fontSize: 16)),
                        ),
                        Icon(Icons.add_circle, color: Colors.green, size: 20),
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

  Widget summaryRow(String label, String amount) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 20)),
          Text(amount, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
