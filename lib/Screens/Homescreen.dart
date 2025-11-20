import 'package:flutter/material.dart';
import 'package:whatsapp/Pages/ChatPage.dart';



class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: 4, vsync: this, initialIndex: 1); // Fix #1 and #2
  }

  @override
  void dispose() {
    _controller.dispose(); // Fix #5
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text("Whatsapp", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
          PopupMenuButton(
            onSelected: (value){
             print(value);
    },
              itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("New Group"),
                value: "New Group",
              ),
              PopupMenuItem(
                child: Text("New Broadcast"),
                value: "New Broadcast",
              ),
              PopupMenuItem(
                child: Text("Whatsapp Web"),
                value: "Whatsapp Web",
              ),
              PopupMenuItem(
                child: Text("Starred Messages"),
                value: "Starred Messages",
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: "Settings",
              ),
            ];
          }),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
            Tab(child: Text("Chats", style: TextStyle(color: Colors.white))),
            Tab(child: Text("STATUS", style: TextStyle(color: Colors.white))),
            Tab(child: Text("CALLS", style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Center(child: Text("Camera")),
          Center(
            child: ChatPage(),
          ),
          Center(child: Text("Status")),
          Center(child: Text("Calls")),
        ],
      ),
    );
  }
}
