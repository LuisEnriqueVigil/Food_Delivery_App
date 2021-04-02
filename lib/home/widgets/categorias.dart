import 'package:delivery_app_figma/data/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Categorias extends StatefulWidget {
  
  Categorias({Key key}) : super(key: key);

  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List<Categoria> categorias = Categoria.categorias;
  int select = 0; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        itemCount: categorias.length,
        padding: EdgeInsets.only(left:20.0,bottom: 5.0),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) => 
        GestureDetector(
          onTap: (){
            setState(() {
              select = index; 
            });
          },
          child: _tarjeta(
            categorias[index].urlImage,
            categorias[index].nombre,
            index
          ),
        ),
      ),
    );
  }

  Widget _tarjeta(String rutaImagen,String titulo,int tag) {
    return AnimatedContainer(
            duration: Duration(milliseconds: 500),
            margin: EdgeInsets.only(right: 8.0),
            height: 150.0,
            width: 90.0,
            decoration: BoxDecoration(
              color:(select == tag )? Color(0xffFF9900) : Colors.white, 
              borderRadius: BorderRadius.circular(90.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.45),
                  offset: Offset(0.0,1.5),
                  blurRadius: 1.2
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                SizedBox(height: 10.0),

                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  child: Container(
                    padding: EdgeInsets.all(6.0),
                    child: Image(
                      image: NetworkImage(rutaImagen),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 10.0),
                
                Text(titulo,
                style: GoogleFonts.poppins(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                ),
              )
              ],
            ),
          );
  }
}