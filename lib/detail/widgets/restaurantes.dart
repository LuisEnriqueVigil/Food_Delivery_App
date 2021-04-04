import 'package:delivery_app_figma/data/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Restaurantes extends StatelessWidget {
  Restaurantes({Key key}) : super(key: key);

  final List<Restaurant> restaurantes = Restaurant.restaurantes;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left:20.0,right: 20.0,top:20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFF9900),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              
              Text('Restaurantes',
                style: GoogleFonts.poppins(
                  fontSize: 20.0,color:Colors.black,fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: size.height*0.010),

              Expanded(
                child: ListView.builder(
                  itemCount: restaurantes.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index)=> 
                  buildTarjetaRestaurante(
                    context: context,
                    urlImage: restaurantes[index].urlImage,
                    disp: restaurantes[index].disp,
                    precio1: restaurantes[index].precio1,
                    precio2: restaurantes[index].precio2,
                    nombre: restaurantes[index].nombre
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget buildTarjetaRestaurante({BuildContext context,String urlImage,String nombre,bool disp,double precio1,double precio2}) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.symmetric(horizontal:20.0),
      height: size.height*0.16,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Container(
            height: size.height*0.12,
            width: size.width*0.35,
            child: Image(
              image: NetworkImage(urlImage),
            ),
          ), 

          SizedBox(width: size.width*0.08),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text(nombre,
              style: GoogleFonts.poppins(fontSize: 15.0,color: Colors.black,fontWeight: FontWeight.bold),
              ),

              Text((disp)?"Disponible":'No disponible',
              style: GoogleFonts.poppins(fontSize: 15.0,color: Colors.grey,fontWeight: FontWeight.bold)
              ),

              Row(
                children: <Widget>[
                  Text("\$"+precio1.toString(),
                  style: GoogleFonts.poppins(fontSize: 15.0,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: size.width*0.025),
                  Text("\$"+precio2.toString(),
                  style: GoogleFonts.poppins(fontSize: 15.0,color: Colors.grey,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              
            ],
          )
        ],
      ),
    );
  }
}