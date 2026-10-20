import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: SchoolAppScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SchoolAppScreen extends StatefulWidget {
  const SchoolAppScreen({Key? key}) : super(key: key);

  @override
  State<SchoolAppScreen> createState() => _SchoolAppScreenState();
}

class _SchoolAppScreenState extends State<SchoolAppScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    // ضع هنا رابط موقعك المدرسي بعد رفعه على GitHub Pages أو أي استضافة
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ....loadRequest(Uri.parse('https://zaidqandla-oss.github.io/school-system/'));
      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ثانوية أم الربيعين - إدارة المدرسة'),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}