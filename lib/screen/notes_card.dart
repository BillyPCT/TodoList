import 'package:flutter/material.dart';
import 'package:todo_list/Models/note.dart';

class NotesCard extends StatelessWidget {
  final Note note;
  const NotesCard({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 170, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.note, color: Colors.white),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  note.title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  note.description,
                  style: const TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              // Aksi hapus catatan
            },
            icon: Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {
              // Aksi update catatan
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
