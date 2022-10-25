import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:jefe_restaurante/pages/contador.dart';
import 'package:jefe_restaurante/pages/subcategorymodel.dart';
import 'package:jefe_restaurante/widgets/subcategory_item_widget.dart';



class HamburguesasPage extends StatefulWidget {
  @override
  State<HamburguesasPage> createState() => _HamburguesasPageState();
}

class _HamburguesasPageState extends State<HamburguesasPage> {

  ContadorModel cont = ContadorModel(contador: 0);
  @override
  Widget build(BuildContext context) {
    List<SubCategoryModel> SubCategory = [
      SubCategoryModel(
          id: 1,
          imagen:
              "https://tofuu.getjusto.com/orioneat-prod-resized/vK3MnMZ9r9kKfY4Tf-1200-1200.webp",
          nombre: "Gringa Burguer",
          Descripcion:
              "Pan brioche americano. Hamburguesa 150 gr. 2 quesos, tocino, relish",
          precio: 24)
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        child: AppBar(
 title: Text("HOLA"),
          actions: [

              Container(
alignment: Alignment.center,
                child: Badge(

                  padding: EdgeInsets.all(2),
           badgeContent: Text("${cont.contador.round()}",style: TextStyle(color: Colors.white,fontSize: 13,),),

                  child:Icon(Icons.shopping_cart_outlined,size: 25),


        ),
              ),

            SizedBox(width: 20),


          ],
          backgroundColor: Colors.black,
          elevation: 10,

        ),preferredSize: Size.fromHeight(80),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ...SubCategory.map((e) => SubCategoryItemWidget(
                  data: e,
                  miFuntion: () {
                    cont.addCounter();
                    setState(() {});
                  },
                )).toList(),

          ],
        ),
      ),
    );
  }
}
