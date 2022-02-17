import 'package:flutter/material.dart';

class GaragemAppbar extends AppBar {
  GaragemAppbar({
    Key? key,
    double elevation = 2
  }) : super(
    key: key,
    backgroundColor: Colors.white,
    elevation: elevation,
    centerTitle: true,
    title: const Text('Garagem - Estacionamento', style: TextStyle(fontSize: 15, color: Colors.black),),
    iconTheme: const IconThemeData(color: Colors.black)
  );
}
