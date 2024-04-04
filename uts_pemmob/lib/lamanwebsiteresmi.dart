import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsiteEmailDetail extends StatelessWidget {
  final String websiteUrl;
  final String email;

  const WebsiteEmailDetail({Key? key, required this.websiteUrl, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Website & Email'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                if (await canLaunch(websiteUrl)) {
                  await launch(websiteUrl);
                } else {
                  throw 'Could not launch $websiteUrl';
                }
              },
              child: Text('Website Resmi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final Uri params = Uri(
                  scheme: 'mailto',
                  path: email,
                );

                String url = params.toString();
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text('Email'),
            ),
          ],
        ),
      ),
    );
  }
}