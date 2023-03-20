import 'package:flutter/material.dart';
import 'package:flutter_chatgpt/widgets/page/chat_page.dart';

import 'api/chat_api.dart';

void main() => runApp(MyApp(
      chatApi: ChatApi(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.chatApi}) : super(key: key);

  final ChatApi chatApi;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatGPT Client',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          secondary: Colors.blueGrey,
        ),
      ),
      home: ChatPage(
        chatApi: chatApi,
      ),
    );
  }
}
