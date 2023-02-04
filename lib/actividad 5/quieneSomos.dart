import 'package:flutter/material.dart';

class Quienesomos extends StatelessWidget {
  const Quienesomos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.grey[300],
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Text("Quienes somos",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                  SizedBox(height: 16),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ),
        ));
  }
}
