import 'package:url_launcher/url_launcher.dart';

launchURL_Facebook() async {
  const url = 'https://www.facebook.com/nibcuritiba/?ref=bookmarks';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURL_Meditacoes() async {
  const url = 'https://online.nib.org.br/#meditacoes';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLInstagramNIB() async {
  const url = 'https://www.instagram.com/nibcuritiba/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

callMe() async {
    // Android
    const uri = 'tel:+5541997039657';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
        throw 'Could not launch $uri';
      }
    }
  