import 'package:flutter/material.dart';
import 'package:quiz/driver.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    precacheImage(
        const AssetImage('assets/images/Naruto_Background.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Results_Background.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Uzumaki_Clan_Symbol.png'), context);
    precacheImage(
        const AssetImage('assets/images/Mode_Background.png'), context);

    //Quiz Background
    precacheImage(const AssetImage('assets/images/Sasuke_1.jpg'), context);
    precacheImage(const AssetImage('assets/images/Kurama.jpg'), context);
    precacheImage(const AssetImage('assets/images/Madara_1.png'), context);
    precacheImage(const AssetImage('assets/images/Madara.jpg'), context);
    precacheImage(const AssetImage('assets/images/Tobi_1.jpg'), context);
    precacheImage(const AssetImage('assets/images/Susanoo.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Kakashi_Hokage.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Kakashi_Obito_Rin.jpg'), context);
    precacheImage(const AssetImage('assets/images/Kakashi_Obito.png'), context);
    precacheImage(const AssetImage('assets/images/Kakashi_2.jpg'), context);
    precacheImage(const AssetImage('assets/images/Kakashi_1.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Madara_Susanoo.jpg'), context);
    precacheImage(const AssetImage('assets/images/Naruto_Sage.jpg'), context);
    precacheImage(const AssetImage('assets/images/Naruto.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Gaara_Minimalist.jpg'), context);
    precacheImage(const AssetImage('assets/images/Team_7.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Naruto_Minimalist.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Madara_HashiramaCells.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Itachi_Anbu_Akatsuki.jpg'), context);
    precacheImage(const AssetImage('assets/images/Team_Kakashi.jpg'), context);
    precacheImage(const AssetImage('assets/images/Minato.jpg'), context);
    precacheImage(const AssetImage('assets/images/Naruto_Genin.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Naruto_Six_Paths.jpg'), context);
    precacheImage(const AssetImage('assets/images/Sharingan.jpg'), context);
    precacheImage(const AssetImage('assets/images/Itachi_Dark.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/Kakashi_Hatake.jpg'), context);
    precacheImage(const AssetImage('assets/images/Kakashi_Young.png'), context);

    return const Driver();
  }
}
