// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class WebViewWidgets extends StatefulWidget {
//   const WebViewWidgets({super.key, required this.url});
//   final String url;
//
//   @override
//   WebViewWidgetsState createState() => WebViewWidgetsState();
// }
//
// class WebViewWidgetsState extends State<WebViewWidgets> {
//   late WebViewController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = WebViewController()
//       ..loadRequest(Uri.parse(widget.url))
//       //what this mean
//       ..setJavaScriptMode(JavaScriptMode.disabled)
//       ..setBackgroundColor(const Color(0x00000000));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: WebViewWidget(controller: _controller,),
//
//     );
//   }
// }
