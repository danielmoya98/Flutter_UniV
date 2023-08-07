import 'package:flutter/material.dart';

void main() => runApp(Perfil());

class Perfil extends StatefulWidget {
  @override
  _PerfilUnivalle createState() => _PerfilUnivalle();
}

class _PerfilUnivalle extends State<Perfil> {
  bool HorizontalListView = true; // Controla la visibilidad del ListView horizontal

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  margin: const EdgeInsets.only(top: 20),
                  width: 410,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red[900],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/logo.jpg'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Daniel Moya',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Ing. Sistemas Informaticos',
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {

                        },
                        child: const Text(
                          'Actividades',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            // Cambiar la visibilidad del ListView al hacer clic en "Actividades"
                            HorizontalListView = !HorizontalListView;
                          });
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'ver mas',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Espacio entre el contenedor y el ListView
              if (HorizontalListView)
                Container(
                  padding: const EdgeInsets.only(left: 9),
                  height: 100, // Altura del ListView horizontal
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4, // Número de elementos en el ListView
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Acción a realizar cuando se hace clic en el elemento
                          switch (index) {
                            case 0:
                            // Navegar a una nueva pantalla o realizar otra acción
                              break;
                          // Agregar casos para los otros elementos si es necesario
                          }
                        },
                        child: Container(
                          width: 300,
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red,
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Icon(Icons.star, color: Colors.yellow),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Título', style: TextStyle(fontSize: 18)),
                                  Text('Descripción', style: TextStyle(fontSize: 14)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (!HorizontalListView)
                Container(
                  padding: const EdgeInsets.only(left: 0),
                  width: 410,
                  height: 300, // Altura del ListView vertical
                  child: ListView.builder(
                    scrollDirection: Axis.vertical, // Cambio a dirección vertical
                    itemCount: 4, // Número de elementos en el ListView
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Acción a realizar cuando se hace clic en el elemento
                          switch (index) {
                            case 0:
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Perfil()),
                              );
                              break;
                          // Agregar casos para los otros elementos si es necesario
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red,
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Icon(Icons.star, color: Colors.yellow),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Título', style: TextStyle(fontSize: 18)),
                                  Text('Descripción', style: TextStyle(fontSize: 14)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 0),
                width: 410,
                height: 300, // Altura del ListView vertical
                child: ListView.builder(
                  scrollDirection: Axis.vertical, // Cambio a dirección vertical
                  itemCount: 4, // Número de elementos en el ListView
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Acción a realizar cuando se hace clic en el elemento
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Perfil()),
                            );
                            break;
                        // Agregar casos para los otros elementos si es necesario
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.transparent, // Cambio de color a transparente
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: const Icon(Icons.star, color: Colors.yellow),
                            ),
                            const SizedBox(width: 10), // Espacio entre el círculo y los textos
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('hola que haces campeon', style: TextStyle(fontSize: 18)),
                                Text('hola como estas', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
