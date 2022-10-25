import 'package:flutter/material.dart';
import 'package:jefe_restaurante/pages/categorymodel.dart';
import 'package:jefe_restaurante/sub_categorys/hamburguesas_page.dart';
import 'package:jefe_restaurante/sub_categorys/salchipapa_page.dart';

class CategoryItemWidget extends StatelessWidget {
  CategoryModel data;

  CategoryItemWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(

      child: Stack(
        children: [
          InkWell(
            onTap: () {
              if (data.id == 2) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => HamburguesasPage()));
              } else if (data.id == 1) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SalchipapasPage()));
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                decoration: BoxDecoration(

                ),
                padding: EdgeInsets.all(4),
                child: Image.network(
                  "${data.imagen}",
                  frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                    return child;
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(

                        child:
                          CircularProgressIndicator()

                         );
                    }
                  },
                  height: height * 0.2,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  //color: Colors.white12,
                ),
              ),
            ),
          ),

          //child:
          Positioned(
              bottom: 10,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 20),
                      //color: Colors.black12.withOpacity(20),
                      blurRadius: 50,
                    ),
                  ],
                ),
                child: Text(
                  "${data.Descripcion}",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 40),
                ),
              )),

        ],
      ),
    );
  }
}
