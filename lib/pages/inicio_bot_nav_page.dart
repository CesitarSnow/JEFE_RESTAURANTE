import 'package:flutter/material.dart';
import 'package:jefe_restaurante/class_icon/my_flutter_app_icons.dart';
import 'package:jefe_restaurante/pages/categorymodel.dart';
import 'package:jefe_restaurante/widgets/category_item_widget.dart';

class InicioNav extends StatefulWidget {

  @override
  State<InicioNav> createState() => _InicioNavState();
}

class _InicioNavState extends State<InicioNav> {

  List<CategoryModel> Category = [
    CategoryModel(
        id: 1,
        imagen: "https://assets.unileversolutions.com/recipes-v2/233383.jpg",
        Descripcion: "Salchipapa"),
    CategoryModel(
        id: 2,
        imagen:
            "https://imagenes.20minutos.es/files/og_thumbnail/uploads/imagenes/2022/07/18/fotografia-de-hamburguesas.jpeg",
        Descripcion: "Hamburguesa"),
    CategoryModel(
        id: 3,
        imagen:
            "https://lanoticia.com/wp-content/uploads/2022/02/como-preparar-alitas-de-pollo-con-salsas-deliciosas-scaled.jpg",
        Descripcion: "Alitas"),
    CategoryModel(
        id: 4,
        imagen:
            "https://www.sargento.com/assets/Uploads/Recipe/Image/enchilada__FillWzExNzAsNTgzXQ.jpg",
        Descripcion: "Enchiladas"),
    CategoryModel(
        id: 5,
        imagen:
            "https://recetasdemipais.com/wp-content/uploads/2022/02/Como-hacer-Pollo-a-la-Broaster-peruano-en-estados-unidos.jpg",
        Descripcion: "Broaster"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [

            ...Category.map((e) => CategoryItemWidget(data: e)).toList(),

          ],

          //],
        ),
      ),
    );
  }
}
