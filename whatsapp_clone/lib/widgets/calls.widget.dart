import 'package:flutter/material.dart';

class AramalarWidget extends StatelessWidget {
  final String? mesaj;
  final String? kisi;
  final Color? okunanMesajRenk;
  final String? kisiResim;
  final Icon? aramaTuru;
  final Color? profilRenk;

  const AramalarWidget({
    Key? key,
    this.mesaj,
    this.kisi,
    this.okunanMesajRenk,
    this.kisiResim,
    this.aramaTuru,
    this.profilRenk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(kisiResim!),
          backgroundColor: profilRenk,
        ),
        Expanded(
          child: ListTile(
              title: Text('$kisi',
                  style:  const TextStyle(fontWeight: FontWeight.w600)),
              subtitle: Row(children: [
                Icon(
                  okunanMesajRenk == Colors.red ? Icons.call_received_sharp : Icons.call_made_sharp,
                  size: 15,
                  color: okunanMesajRenk,
                ),
                Expanded(
                  child: Padding(
                    padding:  const EdgeInsets.only(left: 6.0),
                    child: Text(
                      '$mesaj',
                      style:  const TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ]),
              trailing: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: aramaTuru
                  ),
                ],
              ),
          ),
        ),
      ],
    );
  }
}