import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


launchURL_Facebook() async {
  const url = 'https://www.facebook.com/nibcuritiba/?ref=bookmarks';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch Facebook';
  }
}

launchURL_Meditacoes() async {
  const url = 'https://online.nib.org.br/#meditacoes';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch link para meditações';
  }
}

launchURLInstagramNIB() async {
  const url = 'https://www.instagram.com/nibcuritiba/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch Instagram';
  }
}

launchURLMaps() async {
  const url = 'https://www.google.com.br/maps/place/Nova+Igreja+Batista+(NIB)/@-25.4966247,-49.3066172,17z/data=!3m1!4b1!4m5!3m4!1s0x94dce335f49cb917:0x1d54532da43316a3!8m2!3d-25.4966296!4d-49.3044285?fbclid=IwAR3MMPgHCmYPIhni0-70FLb1onTCfoqgCQWcHHLIgvhen_q77MoZWSGrnsI';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch GoogleMaps';
  }
}

callMe() async {
    // Android
    const uri = 'tel:+554134026747';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
        throw 'Could not launch $uri';
      }
    }

   
   

  