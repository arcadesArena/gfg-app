import 'package:flutter/material.dart';
import 'general_tools.dart';
import 'static_pages.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GFG SIT',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalWidgets.globalAppBar(),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(20)),),
        child: ListView(
          children: [
            const DrawerHeader(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border(bottom: BorderSide.none)
              ),
              child: Text("  Welcome",style: TextStyle(fontSize: 50),),
            ),
            ListTile(title: const Text("Events"),onTap: (){GlobalWidgets.navTo(context,const Contacts());},),
            ListTile(title: const Text("Team"),onTap: (){GlobalWidgets.navTo(context,const Team());},),
            ListTile(title: const Text("About"),onTap: (){GlobalWidgets.navTo(context,const About());},),
            ListTile(title: const Text("Contacts"),onTap: (){GlobalWidgets.navTo(context,const Contacts());},),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Notification"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
