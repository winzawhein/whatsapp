
import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_model/chat_item_model.dart';
import 'package:whatsapp/model/chat_model/chat_helper.dart';
import 'package:whatsapp/view/chat_view.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChatHelper.itemCount,
      itemBuilder: (context, position) {
        ChatItemModel chatItem = ChatHelper.getChatItem(position);
        return Column(
          children: [
            InkWell(
              onTap: () {
                // print(chatItem.name);
                // print(chatItem.image);
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatView(name: chatItem.name,image: chatItem.image,)));
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(chatItem.image.toString()),
                ),
                title: Text(chatItem.name),
                subtitle: Row(
                  children: [
                    Icon(position % 2 == 0 ? Icons.done : Icons.done_all,
                        color: position % 2 == 0 ? Colors.blue : Colors.grey),
                      const  SizedBox(width: 5,),
                        Text(chatItem.mostRecetMessage),
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(top: 2,right: 10),
                  child: Text(chatItem.messageDate) ,),
              ),
            )
          ],
        );
      },
    );
  }
}
