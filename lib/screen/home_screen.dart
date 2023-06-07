import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/ListTile/beranda.dart';
import 'package:todo_list/ListTile/history.dart';
import 'package:todo_list/ListTile/settings.dart';
import 'package:todo_list/Models/note_operations.dart';
import 'package:todo_list/screen/add_screen.dart';
import 'package:todo_list/screen/notes_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddScreen(),
              ),
            );
          },
          backgroundColor: Colors.white,
          child: const Icon(Icons.add, size: 30, color: Colors.blueGrey),
        ),
        appBar: AppBar(
          title: const Text(
            'Todo List',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 40.0,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'TodoListt',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Beranda()));
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const History()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        )),
        body: Consumer<NotesOperation>(
          builder: (context, data, child) {
            return ListView.builder(
                itemCount: data.getNotes.length,
                itemBuilder: (context, index) {
                  return NotesCard(note: data.getNotes[index]);
                });
          },
        ));
  }
}
