import 'package:flutter/material.dart';
import 'info.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        Icon(Icons.check_outlined, color: Colors.grey, size: 14),
                        Text(info[index]['message'].toString(), style: const TextStyle(fontSize: 14))
                      ],
                    )),
                leading: CircleAvatar(backgroundImage: NetworkImage(info[index]['photo'].toString())),
                trailing: Text(info[index]['timeChat'].toString(), style: const TextStyle(fontSize: 14)),
              );
            }));
  }
}
