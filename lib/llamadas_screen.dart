import 'package:flutter/material.dart';
import 'info.dart';

class LlamadasScreen extends StatelessWidget {
  const LlamadasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListView.builder(
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(info[index]['name'].toString(), style: const TextStyle(fontSize: 16)),
                    subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Row(
                          children: [
                            Icon(Icons.transit_enterexit_rounded, color: Colors.red),
                            Text(info[index]['timeLlamada'].toString(), style: const TextStyle(fontSize: 14))
                          ],
                        )),
                    leading: CircleAvatar(backgroundImage: NetworkImage(info[index]['photo'].toString())),
                    trailing: Icon(
                      Icons.call,
                      color: Colors.teal,
                    ),
                  );
                })));
  }
}
