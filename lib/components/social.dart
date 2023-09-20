import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaPage extends StatelessWidget {
  final String imgUrl;
  final String text;
  final String whatsappUrl;
  final String facebookUrl;
  final String instagramUrl;

  SocialMediaPage({
    required this.imgUrl,
    required this.text,
    required this.whatsappUrl,
    required this.facebookUrl,
    required this.instagramUrl,
  });

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Media Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              imgUrl,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchURL(whatsappUrl),
              child: Text('WhatsApp'),
            ),
            ElevatedButton(
              onPressed: () => _launchURL(facebookUrl),
              child: Text('Facebook'),
            ),
            ElevatedButton(
              onPressed: () => _launchURL(instagramUrl),
              child: Text('Instagram'),
            ),
          ],
        ),
      ),
    );
  }
}
