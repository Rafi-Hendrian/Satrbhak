import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:starbhak/Widget/AllfoodWidget.dart';
import 'package:starbhak/Widget/AppBarWidget.dart';
import 'package:starbhak/widget/MenuFoodWidget.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          AppBarWidget(),

         
          AllFoodWidget(),

          
          Padding(
            padding: const EdgeInsets.only(top: 45, right: 290),
            child: Text(
              "All food",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ),

          
          Expanded(
            child: SingleChildScrollView(
              child: MenuFoodWidget(),
            ),
          ),
        ],
      ),
    );
  }
}