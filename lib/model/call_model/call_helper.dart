import 'call_item_model.dart';

class CallHelper{

 static var callList = [
    CallItemModel("Aung Gyi","Outgoing Today, 2:30pm","https://media.istockphoto.com/photos/portrait-of-handsome-latino-african-man-picture-id1007763808?k=20&m=1007763808&s=612x612&w=0&h=q4qlV-99EK1VHePL1-Xon4gpdpK7kz3631XK4Hgr1ls="),
     CallItemModel("Kyaw Gyi ","Outgoing Today, 9:30pm","https://www.washingtonpost.com/rf/image_1484w/2010-2019/WashingtonPost/2017/03/28/Local-Politics/Images/Supreme_Court_Gorsuch_Moments_22084-70c71-0668.jpg?t=20170517"),
 ];

 static CallItemModel getCallItem(int position){
  return callList[position];
 }
 static var itemCount = callList.length;
 
}