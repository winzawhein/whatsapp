
import 'message_model.dart';

class MessageHelper{
  static var messageList =[
 MessageItemModel("Yo Yo", "Gn", "5:00 pm", "msj"),
 MessageItemModel("Yo Yo", "Gn", "5:00 pm", "msj"),
 MessageItemModel("Yo Yo", "Gn", "5:00 pm", "msj"),
 MessageItemModel("Yo Yo", "Gn", "5:00 pm", "msj"),
 MessageItemModel("Yo Yo", "Gn", "5:00 pm", "msj"),
 MessageItemModel("Yo Yo", "Gn", "5:00 pm", "msj"),
  ];
  static MessageItemModel getMessageItem(int position){
    return messageList[position];
  }
  static var itemCount =messageList.length;
}