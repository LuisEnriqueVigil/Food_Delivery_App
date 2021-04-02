
import 'package:flutter/material.dart';

class DrawerModel with ChangeNotifier{ 

  bool _isDrawer = true;  
  double _xOffset = 0 ; 
  double _yOffset = 0; 
  double _scale = 1; 
  IconData _icon = Icons.menu; 

  IconData get icon => this._icon; 
  set icon (IconData valor){
    this._icon = valor; 
    notifyListeners();
  }

  double get xoffset =>this._xOffset; 
  set xoffset (double valor){
    this._xOffset = valor; 
    notifyListeners(); 
  }

  double get yoffset =>this._yOffset; 
  set yoffset (double valor){
    this._yOffset = valor; 
    notifyListeners(); 
  }

  double get scale =>this._scale; 
  set scale (double valor){
    this._scale = valor; 
    notifyListeners(); 
  }


  bool get isDrawer => this._isDrawer; 
  set isDrawer (bool valor){ 
    this._isDrawer = valor; 
    notifyListeners(); 
  }

}