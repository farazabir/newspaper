import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Newspaper extends StatelessWidget {

    final String value;

   const Newspaper({
   Key? key,
    required this.value,
   }): super(key: key);

       
  @override
  Widget build(BuildContext context){
        
       

    return Scaffold(
    body: SafeArea(
      child: WebView(
        initialUrl: "$value",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    )
    );
  }
}


