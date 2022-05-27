import 'package:flutter/material.dart';
import 'info.dart';

class EstadosScreen extends StatelessWidget {
  const EstadosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leadingWidth: 66,
          leading: Stack(
            children: [
              Positioned(
                bottom: 4,
                right: 0,
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage("https://i.pinimg.com/280x280_RS/08/c6/4b/08c64b4b9dc9a0035a714f45cfe8e7d9.jpg"),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 8,
                      child: Icon(
                        Icons.add,
                        size: 12,
                        color: Colors.white,
                      ))),
            ],
          ),
          title: Column(children: [
            Text("Mi estado", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
            Text("Añade una actualización", style: TextStyle(fontSize: 13, color: Colors.black))
          ]),
        ),
        body:
            // Padding(
            //     padding: const EdgeInsets.only(top: 10),
            SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(children: [
            Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "     Recientes",
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                    ))),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(info[index]['name'].toString(), style: const TextStyle(fontSize: 16)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(info[index]['timeEstado'].toString(), style: const TextStyle(fontSize: 14)),
                    ),
                    leading: CircleAvatar(backgroundColor: Colors.green, radius: 30, child: CircleAvatar(backgroundImage: NetworkImage(info[index]['photo'].toString()))),
                  );
                })
          ]),
        )
        // )
        );
  }
}
