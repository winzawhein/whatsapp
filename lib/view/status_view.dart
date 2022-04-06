
import 'package:flutter/material.dart';
// import 'package:whatsapp/model/status_model/StatusItemModel.dart';
import 'package:whatsapp/model/status_model/status_helper.dart';

class StatusListView extends StatelessWidget {
  const StatusListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: StatusHelper.itemCount,
      itemBuilder: (context,position){
        // StatusItemModel statusItemModel= StatusHelper.getStatusItem(position);
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             Padding(
               padding: EdgeInsets.only(top: 5,left: 20,right: 10),
               child: Text("Recent UPdate")),
               Divider(),
               ListTile(
                //  leading: Container(
                //    decoration: BoxDecoration(
                //      shape: BoxShape.circle,
                //      border: Border.all(color: Colors.green,width: 2)
                //    ),
                  
                 ),
               
          ],
        );
      },
    );
  }
}