

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/view/call_list.dart';
import 'package:whatsapp/view/chatlist_view.dart';
import 'package:whatsapp/view/setting.dart';
import 'package:whatsapp/view/status_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
    var fabIcon = Icons.message;
    late TabController tabController;
   @override
  void initState() { 
    super.initState();
    tabController = TabController(length: 4, vsync: this)
    ..addListener(() {
      setState(() {
        switch(tabController.index){
          case 0:
          fabIcon = Icons.camera_alt_outlined;
          break;
           case 1:
          fabIcon = Icons.chat;
          break;
           case 2:
          fabIcon = Icons.camera_alt_outlined;
          break;
           case 3:
          fabIcon = Icons.message;
          break;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.apps_outlined),
        backgroundColor: const Color.fromARGB(255, 10, 112, 164),
        title: Center(child: Text("Whats App",style: GoogleFonts.lato(fontStyle: FontStyle.normal,color: const Color.fromARGB(255, 67, 17, 27)),)),
        actions: [
          PopupMenuButton(
            splashRadius: 10,
            enabled: true,
            icon: const Icon(Icons.more_vert_outlined),
            itemBuilder: (context)=>[
             const PopupMenuItem(child: Text("New Group")),
             const PopupMenuItem(child: Text("Linked Group")),
              PopupMenuItem(
               child: GestureDetector(
                 
                 onTap: () => Navigator.push(context, MaterialPageRoute(
                   builder: (context)=>
                     
                    const SettingView()
                   )),
                 child: const Text("Setting"),
               ))
            ])
        ],
        bottom: TabBar(
          // isScrollable: true,
          labelColor: const Color.fromARGB(255, 24, 25, 26),
          unselectedLabelColor: Colors.black,
          controller: tabController,
          tabs: const[
            Tab(child : Icon(Icons.camera_alt_outlined),),
            Tab(child: Text("Chats"),),
             Tab(child: Text("Status"),),
              Tab(child: Text("Calls"),),
          ], ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const[
          Icon(Icons.camera_alt_outlined),
          ChatListView(),
          StatusListView(),
          CallListView()
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(fabIcon),),
    );
  }
}