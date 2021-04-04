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
    final size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.red,
      height: size.height*0.31,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
           buildSombra(context),
           buildImage(context),
           favIcon(),
           buildTallaPlato(context),
        ],
      ),
    );
  }

  Widget buildImage(BuildContext context) {

    final size = MediaQuery.of(context).size; 
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(top: 5.0),
      child: Center(
        child: Image(
          height: size.height*0.26,
          image: NetworkImage('https://assets.stickpng.com/images/580b57fcd9996e24bc43c1e0.png'),
        )
      )
    );
  }

  Widget buildSombra(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:30.0,left: 2),
      height: size.height*0.23,
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
    final size = MediaQuery.of(context).size;
    circulo (String texto,int index){
       return GestureDetector(
         onTap: (){
            setState(() {
            selectSize = index; 
            });
         },
         child: AnimatedContainer(
          duration:Duration(milliseconds: 300),
          height: 50,
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
      top: size.height*0.22,
      left: MediaQuery.of(context).size.width/3.95,
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