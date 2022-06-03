import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui_helper/colors.dart';

import '../widgets/calls.widget.dart';

class Aramalar extends StatefulWidget {
  const Aramalar({Key? key}) : super(key: key);

  @override
  State<Aramalar> createState() => _AramalarState();
}

class _AramalarState extends State<Aramalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: ListView(
          children: const [
            AramalarWidget(
              mesaj: "Bugün ",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: Colors.green,
              aramaTuru: Icon(Icons.camera_alt,color: Colors.green,),
              profilRenk: redColor,
            ),
            AramalarWidget(
              mesaj: "Bugün ",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: Colors.green,
              aramaTuru: Icon(Icons.call,color: Colors.green,),
              profilRenk: redColor,
            ),
            AramalarWidget(
              mesaj: "Dün ÖS 12.53 ",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: redColor,
              aramaTuru: Icon(Icons.call,color: greenColor,),
              profilRenk: yellowColor,
            ),

          ],
        ),
      ),
    );
  }
}
