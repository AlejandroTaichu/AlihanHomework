import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev3/anasayfa.dart';

class reShape extends Anasayfa{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          child: Image.asset("image/charizard.png"),

        ),
      ),
    );
  }
}