import 'package:flutter/material.dart';

class Sohbet extends StatelessWidget {
  final String? mesaj;
  final String? kisi;
  final Color? okunanMesajRenk;
  final String? kisiResim;
  final String? gorulmeTarihi;
  final Color? profilRenk;

  const Sohbet({
    Key? key,
    this.mesaj,
    this.kisi,
    this.okunanMesajRenk,
    this.kisiResim,
    this.gorulmeTarihi,
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
                  okunanMesajRenk == Colors.blue ? Icons.done_all : Icons.done,
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
                    child: Text(
                      '$gorulmeTarihi',
                    ),
                  ),
                ],
              ),
          ),
        ),
      ],
    );
  }
}