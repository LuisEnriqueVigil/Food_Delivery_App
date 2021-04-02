import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlatoSML extends StatefulWidget {
  const PlatoSML({Key key}) : super(key: key);

  @override
  _PlatoSMLState createState() => _PlatoSMLState();
}
//TODO: HACER LA PAGINA DE DETALLE SEA MAS DINAMICA POR PRODUCTO
class _PlatoSMLState extends State<PlatoSML> {

  int selectSize = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 200.0,width: double.infinity,
      child: Stack(
        children: <Widget>[
           buildSombra(),
           buildImage(),
           favIcon(),
           buildTallaPlato(context),
        ],
      ),
    );
  }

  Widget buildImage() {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(top: 5.0),
      child: Center(
        child: Image(
          height: 150.0,
          image: NetworkImage('https://assets.stickpng.com/images/580b57fcd9996e24bc43c1e0.png'),
        )
      )
    );
  }

  Widget buildSombra() {
    return Container(
      margin: EdgeInsets.only(top:30.0,left: 2),
      height: 165,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.80),blurRadius: 60.0)
        ],
        shape: BoxShape.circle
      ),
    );
  }

  Widget favIcon() {
    return Positioned(
        left: 20.0,
        top: 5,
        child: Icon(
          Icons.favorite,
          size: 25.0,
          color: Color(0xffFF9900),
        ),
      );
  }

  Widget buildTallaPlato(BuildContext context) {

    circulo (String texto,int index){
       return GestureDetector(
         onTap: (){
            setState(() {
            selectSize = index; 
            });
         },
         child: AnimatedContainer(
          duration:Duration(milliseconds: 300),
          height: 50.0,
          width: 50.0, 
          decoration: BoxDecoration(
          color: (selectSize == index ) ?Color(0xffFF9900):Colors.white,
          shape: BoxShape.circle
          ),
          child: Center(
            child: Text(texto,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: (selectSize == index) ? Colors.white : Colors.black
              ),
            )
          ),
      ),
       );
    }

    return Positioned(
      top: 140.0,left: MediaQuery.of(context).size.width/3.95,
      child: Row(
        children: <Widget>[
          circulo('S',0), 
          SizedBox(width: 10.0),
          circulo('M',1), 
          SizedBox(width: 10.0),
          circulo('L',2)
        ],
      ),
    );
  }
}