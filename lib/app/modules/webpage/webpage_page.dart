import 'package:engesoft/constants.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebpagePage extends StatefulWidget {
  final String title;
  const WebpagePage({Key? key, this.title = 'WebpagePage'}) : super(key: key);
  @override
  WebpagePageState createState() => WebpagePageState();
}

class WebpagePageState extends State<WebpagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: WebView(
          userAgent: "random",
          initialUrl: BASE_URL_LOGIN_GOOGLE,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
