import 'package:flutter/material.dart';
import 'package:jefe_restaurante/pages/subcategorymodel.dart';



class SubCategoryItemWidget extends StatefulWidget {
  SubCategoryModel? data;
  Function miFuntion;
  SubCategoryItemWidget({
    this.data, required this.miFuntion});

   @override
  State<SubCategoryItemWidget> createState() => _SubCategoryItemWidgetState();
}

class _SubCategoryItemWidgetState extends State<SubCategoryItemWidget> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                Image.network(
                  "${widget.data?.imagen}",
                  height: height * 0.4,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  ),
                Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.white12,
                  //alignment: Alignment.bottomLeft,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.data?.Descripcion}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "S/. ${widget.data?.precio.toString()}.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                              height: 40,
                              width: 180,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrangeAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      )),
                                  onPressed: () {


                                    setState(() {
                                      widget.miFuntion();
                                    });
                                  },
                                  child: Text(
                                    "Agregar al Carrito",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ))),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: height * 0.29,
              left: 14,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 50,
                    ),
                  ],
                ),
                child: Text(
                  "${widget.data?.nombre}",
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
