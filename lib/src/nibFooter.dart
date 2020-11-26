import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'funcoes.dart';

class NibFooter extends Footer {
  NibFooter()
      : super(
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.call),
                onPressed: callMe,
              ),
              Container(
                width: 25,
              ),
              IconButton(
                icon: Icon(MdiIcons.facebook),
                onPressed: launchURL_Facebook,
              ),
              Container(
                width: 25,
              ),
              IconButton(
                icon: Icon(MdiIcons.instagram),
                onPressed: launchURLInstagramNIB,
              ),
              Container(
                width: 25,
              ),
              IconButton(
                icon: Icon(MdiIcons.whatsapp),
                onPressed: launchWhatsApp,
              ),
              Container(
                width: 25,
              ),
              IconButton(
                icon: Icon(Icons.navigation),
                onPressed: launchURLMaps,
              )
            ],
          ),
        );
}
