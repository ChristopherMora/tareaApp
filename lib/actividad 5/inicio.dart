import 'package:flutter/material.dart';
import 'package:flutter_application_1/actividad%205/quieneSomos.dart';
import 'package:flutter_application_1/actividad%205/servicios.dart';

class Listas extends StatelessWidget {
  const Listas({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titulo = <String>['10 %', '35 %', '17 % '];
    final List<String> descripcion = <String>[
      'Gabinete MSI MAG FORGE M100A con Ventana, Micro ATX/Mini-ITX',
      'Disco Duro Interno Seagate Barracuda 3.5'
          ', 4TB, SATA III, 6 Gbit/s, 5400RPM, 256MB Cache',
      'Tarjeta de Video Gigabyte NVIDIA GeForce GTX 1660 Ti OC, 6GB 192-bit GDDR6, PCI Express x16 3.0'
    ];
    final List<String> imagen = <String>[
      'https://www.cyberpuerta.mx/img/product/M/CP-MSI-MAGFORGEM100A-5964e8.jpg',
      'https://www.cyberpuerta.mx/img/product/M/CP-SEAGATE-ST4000DM004-1.jpg',
      'https://www.cyberpuerta.mx/img/product/M/CP-GIGABYTE-GV-N166TOC-6GD-1.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Tecnology'),
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: titulo.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              elevation: 5,
              shadowColor: Colors.grey,
              child: Column(
                children: [
                  Container(
                    // contenedor del titulo
                    padding: const EdgeInsets.all(10),
                    color: Colors.amber[500],
                    child: Text(
                      '${titulo[index]}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Image.network(
                    // contenido de la imagen
                    '${imagen[index]}',
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    //contenedor del texto de el producto
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '${descripcion[index]}',
                      style: TextStyle(color: Colors.blue[400]),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    // contenedor del boton de la card
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      child: Text('Comprar'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: Icon(Icons.inventory_2),
              title: const Text('Servicios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Servicios(
                            title: '',
                          )),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.handshake),
              title: const Text('Quienes somos'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quienesomos()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
