// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:alsagr_app/services/function.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.shortestSide * 0.2,
          height: MediaQuery.of(context).size.shortestSide * 0.2,
          child: ClipOval(
            child: Image.asset(
              'assets/1703776859895.png',
              height: MediaQuery.of(context).size.width * 0.3,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // معلومات
            const Column(
              children: [
                Text(
                  'معلومات التواصل',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text('info@alsaqerfc.sa'),
                Text('0534141130 - 0534141130'),
              ],
            ),

            // العنوان
            Column(
              children: [
                const Text(
                  'العنوان',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: const Text(
                    'القصيم - بريدة - البُصر',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ].reversed.toList(),
        ),
        // social media icons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SocialMediaButton(
              icon: 'assets/new_twitter.png',
              link:
                  'https://twitter.com/ALSAQERFC?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
            ),
            IconButton(
              icon: Image.asset(
                'assets/social.png',
              ), // استبدل بأيقونة سناب شات الخاصة بك
              onPressed: () async {
                openSocialMedia(
                  'https://www.snapchat.com/add/alsaqerfc1404?share_id=MDBCOUU4MEQtOEI3My00NEIzLUI4MTYtRDc2NUNGMzhGQUJD&locale=ar_SA@calendar=gregorian;numbers=latn&sid=c1f27695138441379274d5304b75de2d',
                );
              },
            ),
            IconButton(
              icon: Image.asset(
                  'assets/instagram.png'), // استبدل بأيقونة واتساب الخاصة بك
              onPressed: () =>
                  openSocialMedia('https://www.instagram.com/alsaqerfc/'),
            ),
            IconButton(
              icon: Image.asset(
                  'assets/whatsapp-icon.png'), // استبدل بأيقونة واتساب الخاصة بك
              onPressed: () => openSocialMedia(
                  'https://api.whatsapp.com/send?phone=966534141130'),
            ),
            IconButton(
              icon: Image.asset(
                  'assets/telegram.png'), // استبدل بأيقونة واتساب الخاصة بك
              onPressed: () => openSocialMedia('https://t.me/alsaqerfc'),
            ),
            IconButton(
              icon: Image.asset(
                  'assets/new-tiktok.png'), // استبدل بأيقونة سناب شات الخاصة بك
              onPressed: () =>
                  openSocialMedia('https://www.tiktok.com/@alsaqerfc'),
            ),
          ],
        ),
        const SizedBox(
          height: 17,
        ),
        Padding(
          padding: const EdgeInsets.only(
              bottom: 5.0), // Change the value to adjust the padding size
          child: Center(
            child: Container(
              alignment: Alignment.centerRight,
              color: const Color.fromRGBO(131, 40, 117, 1.000),
              child: const Text(
                'جميع الحقوق محفوظة لنادي الصقر 2023 صمم بواسطة بانورما القصيم',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(215, 172, 78, 1.000),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.icon,
    this.link,
  });
  final String icon;
  final String? link;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(icon), // استبدل بأيقونة سناب شات الخاصة بك
      onPressed: () async {
        if (link != null) {
          try {
            await launchUrl(
              Uri.parse(link ?? ""),
              mode: LaunchMode.externalApplication,
            );
          } catch (e) {
            log(e.toString());
          }
        }
      },
    );
  }
}
