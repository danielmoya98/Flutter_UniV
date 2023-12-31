import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';



void main() => runApp(MyApp());

//SPLASH SCREEN//



  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
          title: 'Univalle Movil',
          debugShowCheckedModeBanner: false,
          home: AnimatedSplashScreen(
              duration: 5000,
              splash: Image.asset('assets/logo.jpg'),
              nextScreen: MainScreen(),
              splashTransition: SplashTransition.fadeTransition,
              pageTransitionType: PageTransitionType.leftToRight,
              backgroundColor:  const Color(0xFF850842)));
    }
  }

//SEGUNDA VENTANA//
// TODO: LA ANIMACICON SOLO REALIZA CUANDO LA INVOCAMOS A UNA CLASE QUE DEVUELVA UN CONTAINER Y SI DEVOLVEMOS UN MATERIAL COMO VERAN ABAJO OMITE LA ANIMACION.
// TODO: ABRIA QUE BUSCAR UNA FORMA DE CONVERTIR EL MATERIAL APP A CONTAINER O REPLICARLO TODO DENTREO DE UNO , DESDE YA LES DIJO QUE REPLICADO NO SE VE IGUAL.



    // VISTA DE PRUEBA

class VloginContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Color de fondo del Container
      child: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: const Text(
                'Univalle',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // Resto del contenido del Column
            // ...
          ],
        ),
      ),
    );
  }
}

//VISTA OFICIAL

// TODO :  CHICOS SI QUIEREN CREAR VISTAS EN OTROS ARCHIVOS DART PUEDEN HACERLO - CREANDO UN ARCHIVO DART EN LA CARPETA LIB/ARCHIVO Y DE AHI IMPORTARLO AL MAI Y LLMARLO MEDIANTE SU CLASE


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Univalle Movil',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 30, bottom: 20 ),
                child: const Text(
                  'Univalle',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 10, bottom: 50),
                margin: const EdgeInsets.only(left: 10 , right: 10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Bienvenido',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'LA RESPUESTA CIENTIFICA AL FUTUTRO',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Usuario',
                          contentPadding: EdgeInsets.all(16),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Contraseña',
                          contentPadding: EdgeInsets.all(16),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 300.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black, // Pintar el botón de negro
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VloginContainer()),    //TODO: CHICAS BASICAMENTE ESTA ES LA FORMA DE MOVERSE ENTRE VISTA  MEDIANTE UNA LAMDA LLAMAS A LA CLASE QUE CONTENGA ESA VISTA
                          );
                          // Acción al presionar el botón
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Color de fondo del botón
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Iniciar Sesión',
                          style: TextStyle(
                            color: Colors.white, // Color del texto del botón
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Otras Opciones',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 300.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black, // Pintar el botón de negro
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Acción al presionar el botón
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Color de fondo del botón
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: const Icon(
                          Icons.account_box,
                          color: Colors.white, // Color del ícono del botón
                        ),
                        label: const Text(
                          'Recupera tu cuenta',
                          style: TextStyle(
                            color: Colors.white, // Color del texto del botón
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 300.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black, // Pintar el botón de negro
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Acción al presionar el botón
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Color de fondo del botón
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: const Icon(
                          Icons.lock_open,
                          color: Colors.white, // Color del ícono del botón
                        ),
                        label: const Text(
                          'Desbloquea tu cuenta',
                          style:

                          TextStyle(

                            color: Colors.white, // Color del texto del botón
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


