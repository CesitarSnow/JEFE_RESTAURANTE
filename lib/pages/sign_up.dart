import 'package:flutter/material.dart';
import 'package:jefe_restaurante/pages/log_in.dart';

// ignore: use_key_in_widget_constructors
class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool isTerminosChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [

        /*Align(
          alignment: Alignment.bottomCenter,
         child: ClipPath(

            clipper: CurveClipper(),
            child: const Image(
              image: NetworkImage(
                  "https://thumbs.dreamstime.com/b/surtido-de-comida-r%C3%A1pida-y-vista-superior-doble-borde-lateral-en-un-fondo-banner-madera-oscura-variedad-alimentos-para-consumo-o-184617291.jpg"),
              //width: double.infinity,
              //height: 900,
            ),
          ),

      ),*/


  SliverToBoxAdapter(

        //padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //const SizedBox(height: 2),

            Container(
              padding: const EdgeInsets.all(42),
              child: Column(
                children: [
                  const Text(
                    "Sign Up",
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
                    //padding: EdgeInsets.zero,
                    //padding: EdgeInsets.symmetric(horizontal: 20),
                    width: 160,
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
                    //padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.black26.withOpacity(0.16)),
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
                          child: const Icon(Icons.person_sharp, color: Colors.black),
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
                    //padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.black26.withOpacity(0.16)),
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
                          child: const Icon(Icons.lock, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: TextField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: " Contraseña",
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
                  //Contenedor del Telefono
                  Container(
                    //padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.black26.withOpacity(0.16)),
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
                          child: const Icon(Icons.phone, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: " Correo",
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
                  //Contenedor de correo

                  Container(
                    //padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.black26.withOpacity(0.16)),
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
                          child: const Icon(Icons.email, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: " Telefono",
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
                  CheckboxListTile(
                    title: RichText(
                      text: const TextSpan(
                          text: 'Estoy conforme con los',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontFamily: "NotoSerifTelugu"),
                          children: [
                            TextSpan(
                              text: ' Terminos & Condiciones',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 13,
                                  fontFamily: "NotoSerifTelugu",
                                  fontWeight: FontWeight.w600),
                            )
                          ]),
                    ),
                    value: isTerminosChecked,
                    onChanged: (bool? value) {
                      isTerminosChecked = value!;
                      setState(() {
                        //isTerminosChecked ? isTerminosChecked = true : isTerminosChecked = false;
                      }
                      );
                    },
                  ),

                  //,
                  const SizedBox(
                    height: 5,
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
                        border:
                            Border.all(color: Colors.black26.withOpacity(0.16)),
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
                            if(isTerminosChecked == true){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LogIn()),
                              );

                            }

                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (BuildContext context) => RegisterScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent),
                          //onPrimary: Colors.transparent),
                          child: const Text(
                            "SIGN UP",
                          )),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    const TextSpan(
                        text: 'Ya tienes una cuenta? ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "NotoSerifTelugu",
                        )),
                    WidgetSpan(
                        child: GestureDetector(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontFamily: "NotoSerifTelugu",
                            fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LogIn()),
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
