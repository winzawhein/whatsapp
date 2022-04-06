import 'package:flutter/material.dart';

import '../model/message_model/message_helper.dart';

class ChatView extends StatefulWidget {
  final String name;
  final String image;
  const ChatView({ Key? key,required this.name,required this.image}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
             backgroundImage: NetworkImage(widget.image),
            ),
          const  SizedBox(width: 5,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name),
               const Text('Online',style: TextStyle(color: Colors.lightGreenAccent,fontSize: 12),)
              ],
            )
          ],
        ),
        actions: const [
          Icon(Icons.call),
          SizedBox(width: 20,),
          Icon(Icons.video_call_outlined),
          SizedBox(width: 20,)

        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: ListView.builder(
            itemCount: MessageHelper.itemCount,
            itemBuilder: (context,index){
            return Column(
              children: const [

              ],
            );
          })),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Expanded(child: Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey
                    ),
                    child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(child:
                          
                          
                          TextFormField(initialValue: "Typing message...",)
                        ),
                       
                      ],
                    ),),
                  ))),
                const  CircleAvatar(child: Icon(Icons.attach_file,size: 17,color: Colors.white),),
                const  SizedBox(width: 5,),
                const  CircleAvatar(child: Icon(Icons.camera_alt_outlined,size: 17,color: Colors.white),),
                const  SizedBox(width: 5,),
               const CircleAvatar(child: Icon(Icons.mic,size: 17,color: Colors.white,),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class MessageBubble extends StatelessWidget {
//    final bool isMe;
//    final String message,type;
//    final String time;
//   //  final VoiceCallBack onPress;
//    int index;
//    int listLength;
//    bool isSeen;
//   // const MessageBubble({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }