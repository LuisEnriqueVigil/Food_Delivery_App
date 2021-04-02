import 'package:delivery_app_figma/home/pages/menu_page.dart';
import 'package:delivery_app_figma/home/widgets/app_bar.dart';
import 'package:delivery_app_figma/home/widgets/buscador.dart';
import 'package:delivery_app_figma/home/widgets/categorias.dart';
import 'package:delivery_app_figma/home/widgets/mas_populares.dart';
import 'package:delivery_app_figma/home/widgets/text_saludo.dart';
import 'package:delivery_app_figma/home/widgets/titles_widget.dart';
import 'package:delivery_app_figma/home/widgets/ubicacion.dart';
import 'package:delivery_app_figma/model/drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            MenuPage(),
            HomePageFront()
          ],
        ),
      ),
    );
  }
}

class HomePageFront extends StatefulWidget {

  @override
  _HomePageFrontState createState() => _HomePageFrontState();
}

class _HomePageFrontState extends State<HomePageFront> {

  @override
  Widget build(BuildContext context) {
    final isDrawerModel = Provider.of<DrawerModel>(context,listen:true);
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      transform:  Matrix4.translationValues(isDrawerModel.xoffset, isDrawerModel.yoffset, 0)..scale(isDrawerModel.scale),                                                            
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(isDrawerModel.xoffset*0.10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomAppBar(
            isDetail: false,
          ),
          UbicacionWidget(),
          TextSaludo(),
          BuscadorWiget(),
          TitileWidget(titulo: 'Categorias',top: 10.0,),
          Categorias(),
          TitileWidget(titulo: 'Mas populares',top:5.0),
          MasPopulares(),
        ],
      ),
    );
  }
}