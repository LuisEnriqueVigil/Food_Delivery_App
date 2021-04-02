import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage('https://www.tec.com.pe/wp-content/uploads/2021/03/elon-musk.jpg'),
                radius: 25.0,
              ),
              SizedBox(width: 10.0),
              Text('Hola,\nElon Musk',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16.0
              ),
              ),
            ],
          );
  }
}