import 'package:delivery_app_figma/model/drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {

  final bool isDetail;  

  const CustomAppBar({Key key, this.isDetail}) : super(key: key); 

  @override
  Widget build(BuildContext context) {

    final isDrawerModel = Provider.of<DrawerModel>(context,listen: true);
    
    return Container(
      width: double.infinity,
      height: 60.0,
      margin: EdgeInsets.symmetric(horizontal:10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: (isDetail)?  Icon(Icons.arrow_back_ios):Icon(isDrawerModel.icon), 
            onPressed: (isDetail)? (){
              Navigator.pop(context); 
            }
            :
            (){
              print(isDrawerModel.isDrawer);
              if(!isDrawerModel.isDrawer)
                {
                  isDrawerModel.xoffset = 200; 
                  isDrawerModel.yoffset = 60;
                  isDrawerModel.scale = 0.8;
                  isDrawerModel.icon = Icons.arrow_back_ios;
                } 
              if(isDrawerModel.isDrawer){
                  isDrawerModel.xoffset = 0; 
                  isDrawerModel.yoffset = 0;
                  isDrawerModel.scale = 1.0;
                  isDrawerModel.icon = Icons.menu;
              }
              isDrawerModel.isDrawer = !isDrawerModel.isDrawer;    

            }
          ),
          Text('Food Delivery App', 
            style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.bold, 
              color: Color(0xffFF9900), 
            ),  
          ), 
          CircleAvatar(
            backgroundImage: NetworkImage('https://www.tec.com.pe/wp-content/uploads/2021/03/elon-musk.jpg'),
            radius: 25.0,
          )
        ],
      ),
    );
  }
}