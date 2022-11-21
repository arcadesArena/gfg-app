import 'package:flutter/material.dart';
import 'general_tools.dart';

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalWidgets.globalAppBar(),
      body: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
        children: [
          GlobalWidgets.imageCard(context, "sourav-sethi", "Sourav Sethi", "member", "https://github.com/sourav8899", "https://www.linkedin.com/in/sourav-sethi-856399222/"),
          SizedBox(height: MediaQuery.of(context).size.height*0.015,),
          GlobalWidgets.imageCard(context, "amiyanshu", "Amiyanshu", "member", "https://github.com/sourav8899", "https://www.linkedin.com/in/sourav-sethi-856399222/"),
          SizedBox(height: MediaQuery.of(context).size.height*0.015,),
          GlobalWidgets.imageCard(context, "arpitha-n-s", "Arpitha N S", "member", "https://github.com/sourav8899", "https://www.linkedin.com/in/sourav-sethi-856399222/"),
          SizedBox(height: MediaQuery.of(context).size.height*0.015,),
          GlobalWidgets.imageCard(context, "sourav-sethi", "Sourav Sethi", "member", "https://github.com/sourav8899", "https://www.linkedin.com/in/sourav-sethi-856399222/"),
          SizedBox(height: MediaQuery.of(context).size.height*0.015,),
          GlobalWidgets.imageCard(context, "sourav-sethi", "Sourav Sethi", "member", "https://github.com/sourav8899", "https://www.linkedin.com/in/sourav-sethi-856399222/"),
          SizedBox(height: MediaQuery.of(context).size.height*0.015,),
          GlobalWidgets.imageCard(context, "sourav-sethi", "Sourav Sethi", "member", "https://github.com/sourav8899", "https://www.linkedin.com/in/sourav-sethi-856399222/"),
          SizedBox(height: MediaQuery.of(context).size.height*0.015,),
        ],
      ),
    );
  }
}


class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalWidgets.globalAppBar(),
      body: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}


class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalWidgets.globalAppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.075,),
            Image.asset("assets/gfg-new-logo.png"),
            GlobalWidgets.linkElevatedButton("https://www.youtube.com/channel/UC0jiA_-PNaMyL8mko6eHsuw", "Youtube"),
            GlobalWidgets.linkElevatedButton("https://github.com/gfg-sit", "Github"),
            GlobalWidgets.linkElevatedButton("https://www.instagram.com/geeksforgeeks_sit/", "Instagram"),
            GlobalWidgets.linkElevatedButton("https://t.me/GeeksforGeeks_SIT", "Telegram"),
            GlobalWidgets.linkElevatedButton("https://chat.whatsapp.com/DA701zx0k87DJNUnqD0Pg6", "WhatApp"),
            GlobalWidgets.linkElevatedButton("https://www.linkedin.com/company/geeksforgeeks-sit/", "LinkedIn"),
            GlobalWidgets.linkElevatedButton("https://maps.google.com/maps?ll=13.326898,77.126095&z=16&t=m&hl=en&gl=IN&mapclient=embed&cid=16683031220794618752", "Location"),
          ],
        ),
      )
    );
  }
}
