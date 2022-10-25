import 'package:flutter/material.dart';
import 'package:jefe_restaurante/pages/bot_nav.dart';
import 'package:jefe_restaurante/pages/inicio_bot_nav_page.dart';
import 'package:jefe_restaurante/pages/sign_up.dart';

class LogIn extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    InicioNav ini = InicioNav();

        return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [

                Container(


                  padding: const EdgeInsets.all(45),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 49,
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSerifTelugu"),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(

                        width: 100,
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow.shade600,
                              Colors.orange.shade800,
                              Colors.red
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        //padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.black26.withOpacity(0.16)),
                          borderRadius: BorderRadius.circular(40.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[800]!.withOpacity(0.18),
                              offset: const Offset(0, 10),
                              blurRadius: 30,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: const Icon(Icons.person_sharp,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: const InputDecoration(
                                    hintText: " Nombre de Ususario",
                                    border: InputBorder.none),
                                cursorColor: Colors.red,
                                onChanged: (String value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Contenedor de contraseña

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.black26.withOpacity(0.16)),
                          borderRadius: BorderRadius.circular(40.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[800]!.withOpacity(0.18),
                              offset: const Offset(0, 10),
                              blurRadius: 30,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child:
                                  const Icon(Icons.lock, color: Colors.black),
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: " Contraseña",
                                    border: InputBorder.none,

                                ),

                                cursorColor: Colors.red,
                                onChanged: (String value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Olvidaste tu Clave?',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontFamily: "NotoSerifTelugu",
                            fontWeight: FontWeight.w600),
                      ),

                      //,
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        width: double.infinity,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.yellow.shade600,
                                Colors.orange.shade800,
                                Colors.red
                              ],
                            ),
                            border: Border.all(
                                color: Colors.black26.withOpacity(0.16)),
                            borderRadius: BorderRadius.circular(40.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.orange.withOpacity(0.22),
                                offset: const Offset(0, 10),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        BottonNav()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent),
                                                            child: const Text(
                                "LOGIN",
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text("OR"),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.facebook,
                            size: 30,
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.network(
                            'https://us.123rf.com/450wm/kornienko/kornienko1611/kornienko161100200/66047248-chisinau-moldova-16-de-noviembre-de-2016-logotipo-de-google-en-la-pantalla-del-pc-google-es-el-mayor.jpg?ver=6',
                            height: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                            text: 'Nuevo Usuario? ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: "NotoSerifTelugu",
                            )),
                        WidgetSpan(
                            child: GestureDetector(
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontFamily: "NotoSerifTelugu",
                                fontWeight: FontWeight.w600),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                        ))
                      ])),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[
                const Expanded(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                ClipPath(
                  clipper: CurveClipper(),
                  child: const Image(
                    image: NetworkImage(
                        "https://thumbs.dreamstime.com/b/surtido-de-comida-r%C3%A1pida-y-vista-superior-doble-borde-lateral-en-un-fondo-banner-madera-oscura-variedad-alimentos-para-consumo-o-184617291.jpg"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, size.height * 0.7540000);
    path.lineTo(size.width * 0.9987500, size.height * 0.1);
    path.quadraticBezierTo(
        size.width * 0.5321875, size.height * 0.5, 0, size.height * 0.1);
    path.quadraticBezierTo(0, size.height * 0.1, 0, size.height);
    path.lineTo(size.width * 0.9987500, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
