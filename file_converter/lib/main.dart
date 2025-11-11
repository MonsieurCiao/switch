import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void onUpload() {
    print("something");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
          child: Column(
            children: [
              // Heading
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "To be converted",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              // List
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.insert_drive_file_outlined),
                      title: const Text("File 1"),
                      subtitle: const Text(".mp4"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // action on tap if needed
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: onUpload,
          child: const Icon(BoxIcons.bx_plus),
          // Make the button larger by increasing the size of icon and height
          // sizeConstraints: const BoxConstraints(
          //   minWidth: 70,
          //   minHeight: 70,
          // ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
