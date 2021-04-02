import 'package:delivery_app_figma/detail/widgets/plato_sml.dart';
import 'package:delivery_app_figma/detail/widgets/precio_cant.dart';
import 'package:delivery_app_figma/detail/widgets/restaurantes.dart';
import 'package:delivery_app_figma/home/widgets/app_bar.dart';
import 'package:flutter/material.dart'; 

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CustomAppBar(
              isDetail: true,
            ), 
            PlatoSML(), 
            PrecioCantidad(),
            Restaurantes(),
          ],
        ),
      ),
    );
  }
}