import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UbicacionWidget extends StatelessWidget {
  const UbicacionWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:20.0,vertical: 5.0),
      height: 30.0,width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color:Colors.grey.withOpacity(0.35)
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.location_on,
            color: Colors.grey.withOpacity(0.8),
          ),
          Text('Ubicacion', 
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 15.0 
          ),
          )
        ],
      ),
    );
  }
}