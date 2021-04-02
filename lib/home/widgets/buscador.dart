import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuscadorWiget extends StatelessWidget {
  const BuscadorWiget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _queBuscas(),
        _icon()
      ],
    ); 
  }

  Widget _queBuscas() {
    return Container(
        height: 40.0,
        width: 280.0,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.only(left:20.0,right: 10.0),
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15.0),
          color: Colors.grey.withOpacity(0.35)
        ),
        //TODO:  AGREGAR EL TEXFIELD
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.search,
              size: 25.0,
              color: Colors.black.withOpacity(0.65),
            ),
            Text(
              ' Que estas buscando?', 
              style: GoogleFonts.poppins(
                fontSize:18.0,
                color:Colors.black.withOpacity(0.8)
              ),
            ),
          ],
        ),
      );
  }

  Widget _icon () { 
    return Container(
      height: 40.0,width: 40.0,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.35),
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Icon(
        Icons.sort
      ),
    ); 
  }

}