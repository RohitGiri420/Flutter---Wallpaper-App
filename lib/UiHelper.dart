import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper{

  CustomTextField(String Text,IconData icon) {
    return Center(
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: TextField(
          style: TextStyle(
            color: Colors.white38
          ),
          decoration: InputDecoration(

            hintStyle: TextStyle(color: Colors.black26),

            hintText: '$Text',
            suffixIcon: Icon(icon,color: Colors.black26,),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)
            ),focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white),
            )
          ),
        ),
      ),
    );

  }

  Heading(String text) {
    return Text("$text",style: TextStyle(
        fontSize: 20,
      fontWeight: FontWeight.w700,
    ),);
  }

  Container1(String image){
    return Card(
      elevation: 5,
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: 160,
        height: 220,

      child: Image.network('$image',fit: BoxFit.cover,),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      ),
    );
  }

}