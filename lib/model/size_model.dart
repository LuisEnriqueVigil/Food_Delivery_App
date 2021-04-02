import 'package:flutter/material.dart';

class SizeModel with ChangeNotifier{ 
  
  int _size = 1; 

  int get size => this._size; 
  set size (int valor){
    this._size = size; 
    notifyListeners();
  }

}