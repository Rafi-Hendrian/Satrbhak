import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbhak/Pages/CreatePage.dart';
import 'package:starbhak/Widget/NavbarWidget.dart';

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
                padding: EdgeInsets.all(8),
                shape: CircleBorder(),
                backgroundColor: Colors.white,
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              child: Icon(Icons.chevron_left, size: 40, color: Colors.black),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(8),
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
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
              ),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Foto",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 70),
                Text(
                  "Nama Produk",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 70),
                Text(
                  "Harga",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 70),
                Text(
                  "Aksi",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          SizedBox(height: 0),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40),
                    child:
                        Image.network('assets/images/Burger.jpg', fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(width: 24),
              Text(
                "Burger King Medium",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 36),
              Text(
                "Rp.50.000,00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 46),
              Icon(CupertinoIcons.trash, size: 24, color: Colors.red),
            ],
          ),
          SizedBox(height: 5),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          SizedBox(height: 0),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40),
                    child: Image.network('assets/images/Minuman.jpg', fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(width: 24),
              Text(
                "Teh Botol",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 87),
              Text(
                "Rp.5.000,00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 53),
              Icon(CupertinoIcons.trash, size: 24, color: Colors.red),
            ],
          ),
          SizedBox(height: 5),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          SizedBox(height: 0),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40),
                    child:
                        Image.network('assets/images/Keyboard.jpg', fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(width: 24),
              Text(
                "Burger King Small",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 50),
              Text(
                "Rp.350.000,00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 46),
              Icon(CupertinoIcons.trash, size: 24, color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }
}
