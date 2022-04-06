
import 'chat_item_model.dart';

class ChatHelper{
  static var chatList= [
    ChatItemModel("Bo bo", "Morning", "today 4:00am", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjidvk3DPBtaN3SXhqTDVhzve_yJEhYIE9xQ&usqp=CAU"),
     ChatItemModel("Bo Aung", "Morning", "today 4:00am", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjidvk3DPBtaN3SXhqTDVhzve_yJEhYIE9xQ&usqp=CAU"),
      ChatItemModel("Bo Kyawt", "Morning", "today 4:00am", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjidvk3DPBtaN3SXhqTDVhzve_yJEhYIE9xQ&usqp=CAU"),
       ChatItemModel("Bo Gyi", "Morning", "today 4:00am", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjidvk3DPBtaN3SXhqTDVhzve_yJEhYIE9xQ&usqp=CAU"),
        ChatItemModel("Bo Lay", "Morning", "today 4:00am", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjidvk3DPBtaN3SXhqTDVhzve_yJEhYIE9xQ&usqp=CAU"),
  ];
  static ChatItemModel getChatItem(int position){
    return chatList[position];
  }
  static var itemCount = chatList.length;
}