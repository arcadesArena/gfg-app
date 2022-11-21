import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class GlobalWidgets{

  static Widget imageCard(BuildContext bContext,String pic,String name,String post,String github,String linkedin){
    return Container(
      width: MediaQuery.of(bContext).size.width*0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20),),
        border: Border.all(color: Colors.green,width: 5,),
        color: Colors.green[100],
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(width: MediaQuery.of(bContext).size.width*0.05,),
          Image.asset("team/$pic.png",height: MediaQuery.of(bContext).size.height/5,),
          SizedBox(width: MediaQuery.of(bContext).size.width*0.05,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,),),
                Text(post,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500,),),
                SizedBox(height: MediaQuery.of(bContext).size.height*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(github),
                        builder: (context,followLink) => IconButton(onPressed: followLink, icon: Image.asset("icons/github.png"))
                    ),
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(linkedin),
                        builder: (context,followLink) => IconButton(onPressed: followLink, icon: Image.asset("icons/linkedin.png"))
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget linkElevatedButton(String link,String text){
    return Link(
      target: LinkTarget.blank,
      uri: Uri.parse(link),
      builder: (context, followLink) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width*0.85,
          child: ElevatedButton(
            onPressed: followLink,
            child: Text(text,style: const TextStyle(fontSize: 20),),
          ),
        ),
      ),
    );
  }

  static void navTo(BuildContext bContext,Widget pageName){
    // Navigator.push(bContext,MaterialPageRoute(builder: (context) => pageName));
    Navigator.of(bContext).push(MaterialPageRoute(builder: (context) => pageName,),);
  }

  static PreferredSizeWidget globalAppBar() {
    return AppBar(
      title: const Text("GFG SIT-Chapter"),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.light_mode),
        )
      ],
    );
  }
}
