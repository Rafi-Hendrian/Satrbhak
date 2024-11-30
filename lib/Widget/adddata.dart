import 'package:flutter/material.dart';
import 'package:starbhak/Widget/NavbarWidget.dart';
import 'package:starbhak/Widget/NavbarWidget.dart'; // Perbaikan nama file
import 'package:starbhak/Widget/AppBarWidget.dart'; // Perbaikan nama file
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Adddata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductForm(),
    );
  }
}

// Inisialisasi Supabase client
final supabase = Supabase.instance.client;

class ProductForm extends StatefulWidget {
  @override
  _ProductFormState createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  String _katagori = 'Makanan';
  XFile? _imageFile;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? selectedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = selectedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double getPadding() {
      if (screenWidth < 600) return 16; // Mobile
      if (screenWidth < 1024) return 32; // Tablet
      return 64; // Desktop
    }

    return Scaffold(
      body: ListView(
        children: [
          // AppBar
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.all(getPadding()),
            child: Center(
              child: Container(
                width: screenWidth < 600
                    ? screenWidth
                    : screenWidth * 0.7, // Responsif untuk Tablet/Desktop
                padding: EdgeInsets.all(getPadding()),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Nama Produk
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'Nama Produk',
                          hintText: 'Masukan Nama Produk',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      // Harga Field
                      TextField(
                        controller: _priceController,
                        decoration: InputDecoration(
                          labelText: 'Harga',
                          hintText: 'Masukan Harga',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),

                      // Kategori Produk Dropdown
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Kategori produk',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        value: 'Makanan',
                        items: [
                          DropdownMenuItem(
                            value: 'Makanan',
                            child: Text('Makanan'),
                          ),
                          DropdownMenuItem(
                            value: 'Minuman',
                            child: Text('Minuman'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _katagori = value!;
                          });
                        },
                      ),
                      SizedBox(height: 16),

                      // Image Picker Field
                      GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _imageFile == null
                                    ? 'Pilih Gambar'
                                    : 'Gambar Terpilih',
                              ),
                              Icon(Icons.image),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),

                      // Submit Button
                      ElevatedButton(
                        onPressed: () async {
                          final name = _nameController.text;
                          final price = _priceController.text;

                          // Kirim Data ke Supabase
                          await supabase.from('starbhak_mart').insert({
                            'name': name,
                            'price': price,
                            'kategori': _katagori,
                          });

                          // Navigasi ke halaman lain
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Navbarwidget(),
                            ),
                          );

                          // Reset State
                          setState(() {});
                          _nameController.clear();
                          _priceController.clear();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('Submit', style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
