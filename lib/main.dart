import 'package:delivery_app_figma/model/drawer_model.dart';
import 'package:delivery_app_figma/model/size_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/pages/home_page.dart';

void main() {
  return runApp(
    MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_)=> DrawerModel(),),
        ChangeNotifierProvider(create: (_)=>SizeModel()),
      ],
    child:MyApp()
     )
    );
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery food',
      home: HomePage(), 
    );
  }
}