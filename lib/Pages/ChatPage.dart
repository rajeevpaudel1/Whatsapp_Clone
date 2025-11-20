import 'package:flutter/material.dart';
import 'package:whatsapp/CustomUI/CustomCard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatsState();
}

class _ChatsState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF075E54),
        onPressed: () {},
        shape: CircleBorder(),
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [
          Customcard(),
          Customcard(),
          Customcard(),
        ],
      ),
    );
  }
}
