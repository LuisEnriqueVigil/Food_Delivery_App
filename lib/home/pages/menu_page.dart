import 'package:delivery_app_figma/home/widgets/option.dart';
import 'package:delivery_app_figma/home/widgets/profile.dart';
import 'package:flutter/material.dart';


class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF9900),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileInfo(),
            SizedBox(height: 100.0),
            _optionsColumn()
          ],
        ),
      ),
    );
  }

  Widget _optionsColumn() {
    return Column(
      children: <Widget>[
        OptionsMenu(
      icon: Icons.home,
      option: 'Inicio',
    ),
    OptionsMenu(
      icon: Icons.shopping_basket,
      option: 'Mi Carrito',
    ),
    OptionsMenu(
      icon: Icons.featured_play_list,
      option: 'Ordenes',
    ),
    OptionsMenu(
      icon: Icons.favorite,
      option: 'Favoritos',
    ),
    OptionsMenu(
      icon: Icons.payment,
      option: 'Pagos',
    ),
      ],
    );
  }
}

