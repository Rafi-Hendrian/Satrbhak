import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarWidget extends StatelessWidget{
  @override  
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(
      vertical: 15, 
      horizontal: 15,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage()),
                // );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(8),
                shape: CircleBorder(),
                backgroundColor: Colors.white,
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              child: Icon(CupertinoIcons.bars, color: Colors.black, size: 24),
            ),
        ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage()),
                // );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(8),
                shape: CircleBorder(),
                backgroundColor: Colors.white,
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              child: Icon(CupertinoIcons.person, color: Colors.black, size: 24),
            ),
    ],),
    );
  }
}