import 'package:delivery_app_figma/detail/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MasPopulares extends StatelessWidget {
  const MasPopulares({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left:20.0,right: 20.0,top:10.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
            children: <Widget>[
              _tarjetaPopular('Pizza Napolitana','https://assets.stickpng.com/images/580b57fcd9996e24bc43c1e0.png',context),
              _tarjetaPopular('Sushi Ninja Roll','https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1f9.png',context),
              _tarjetaPopular('Hamburguesa','https://www.puertopixel.com/wp-content/uploads/2016/12/imagen-de-hamburguesa-png.png',context),
              _tarjetaPopular('Limonadas','https://www.pngkit.com/png/full/446-4464891_bebidas-png.png',context),
          ],
      
      ),
  ),
    );
}

  Widget _tarjetaPopular(String titulo, String rutaIamgen,BuildContext context) { 
    return GestureDetector(
      onTap: (){ 
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage()));
      },
      child: Container(
              margin: EdgeInsets.only(bottom: 8.0),
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color:Colors.grey.withOpacity(0.20),
              ),
              padding: EdgeInsets.only(left:10.0,right:5.0),
              child:Row(
                children: <Widget>[
                  Container(
                    height: 75.0,
                    width: 120.0,
                    child: Image(
                      image: NetworkImage(rutaIamgen),
                    ),
                  ), 
                  SizedBox(width: 8.0),

                  Container(
                    width: 128,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center, //me ayuda a centralizar la informacion
                      children: <Widget>[
                        Text(titulo, 
                        style:GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                        ), 
                      ),
                      Text('Pizza', 
                        style:GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.grey
                        ), 
                      ),
                      Row(
                        children: <Widget>[
                          Text('\$15', 
                            style:GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                            ), 
                          ),
                          Text(' \$10', 
                            style:GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.grey
                            ), 
                          ),
                        ],
                      ),
                    ],
                ),
                  ),
                Column(
                      children: <Widget>[
                        Expanded(child:SizedBox()), 
                        IconButton(
                          color: Color(0xffFF9900),
                          icon:Icon(Icons.favorite),
                          onPressed: (){},
                        )
                      ],
                    )
              ],
            )
          ),
    );
  }

}