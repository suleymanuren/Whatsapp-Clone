import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui_helper/colors.dart';
import 'package:whatsapp_clone/widgets/chat_widgets.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: ListView(
          children: [
            const Sohbet(
              mesaj: "bugün hallederiz",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: blueColor,
              gorulmeTarihi: "Bugün",
              profilRenk: redColor,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: greyColor,
              gorulmeTarihi: "Dün",
              profilRenk: blueColor,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: blueColor,
              gorulmeTarihi: "31.05.2022",
              profilRenk: yellowColor,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: greyColor,
              gorulmeTarihi: "31.05.2022",
              profilRenk: purpleColor,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: blueColor,
              gorulmeTarihi: "30.05.2022",
              profilRenk: deepOrangeColor
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: greyColor,
              gorulmeTarihi: "30.05.2022",
              profilRenk: transparent,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: blueColor,
              gorulmeTarihi: "29.05.2022",
              profilRenk: cyanColor,
            ),
            Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: greyColor,
              gorulmeTarihi: "29.05.2022",
              profilRenk: Colors.red.shade100,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: blueColor,
              gorulmeTarihi: "28.05.2022",
              profilRenk: cyanColor,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: greyColor,
              gorulmeTarihi: "28.05.2022",
              profilRenk: cyanColor,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: blueColor,
              gorulmeTarihi: "27.05.2022",
              profilRenk: cyanColor,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: greyColor,
              gorulmeTarihi: "27.05.2022",
              profilRenk: cyanColor,
            ),
            const Sohbet(
              mesaj: "test",
              kisi: "Süleyman",
              kisiResim: "https://www.woolha.com/media/2020/03/eevee.png",
              okunanMesajRenk: blueColor,
              gorulmeTarihi: "26.05.2022",
              profilRenk: cyanColor,
            ),
          ],
        ),
      ),
    );
  }
}
