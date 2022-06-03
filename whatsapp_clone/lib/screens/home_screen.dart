import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';
import 'package:whatsapp_clone/ui_helper/colors.dart';

import 'camera_screen.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
    static String routeName = "/HomeScreen";

   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: greenColor,
          title: const Text("Whatsapp"),
          actions: [
            GestureDetector(
                child: const Icon(Icons.search),
                onTap: () {
                }),
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text('Yeni Grup')),
                  const PopupMenuItem(child: Text('Bağlı Cihazlar')),
                  const PopupMenuItem(child: Text('Yıldızlı Mesajlar')),
                  const PopupMenuItem(child: Text('Ayarlar')),
                ];
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "Sohbet"),
              Tab(text: "Durum"),
              Tab(text: "Aramalar"),
            ],
            indicatorColor: blackColor,
          ),
        ),
        body:  TabBarView(
          children: [
            CameraScreen(),
            Chat(),
            Durum(),
            Aramalar(),
          ],
        ),
      ),
    );
  }
}
