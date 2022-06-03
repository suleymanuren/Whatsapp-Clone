import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui_helper/colors.dart';
import 'package:whatsapp_clone/widgets/durum_widgets.dart';

import '../ui_helper/colors.dart';

class Durum extends StatelessWidget {
  const Durum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  children: const [
                    CircleAvatar(
                      backgroundColor: backgroundColor,
                      foregroundColor: foregroundColor,
                      radius: 30,
                      backgroundImage:
                          AssetImage('lib/assets/1647878648863.jfif'),
                    ),
                    Positioned(
                      top: 40,
                      left: 40,
                      child: CircleAvatar(
                        radius: 10,
                        child: Icon(Icons.add, size: 20),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: ListTile(
                    title: Text('Durumum'),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 2.0),
                      child: Text('Durumuma ekle'),
                    ),
                    trailing: Icon(Icons.camera_alt),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text('Son Güncellemeler',
                  style: TextStyle(fontWeight: FontWeight.w400)),
            ),
            Row(
              children: [
                Stack(
                  children: const [
                    CircleAvatar(
                      backgroundColor: greyColor,
                      radius: 30,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('lib/assets/1647878648863.jfif'),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: ListTile(
                    title: Text('Süleyman Üren'),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 2.0),
                      child: Text('7d önce'),
                    ),
                  ),
                ),
              ],
            ),
            Theme(
              data: ThemeData().copyWith(dividerColor: transparent),
              child: const ExpansionTile(
                textColor: blackColor,
                tilePadding: EdgeInsets.all(0.0),
                title: Text('Susturulmuş Durumlar',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                children: [
                  DurumWidget(
                    statusTitle: 'TEST',
                    statusTime: '5d önce',
                    statusImage: '#',
                  ),
                  DurumWidget(
                    statusTitle: 'TEST',
                    statusTime: '5d önce',
                    statusImage: '#',
                  ),
                  DurumWidget(
                    statusTitle: 'TEST',
                    statusTime: '5d önce',
                    statusImage: '#',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
