
import 'package:flutter/material.dart';
import 'package:whatsapp/model/call_model/call_item_model.dart';
import 'package:whatsapp/model/call_model/call_helper.dart';

class CallListView extends StatelessWidget {
  const CallListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CallHelper.itemCount,
      itemBuilder: (context,position){
        CallItemModel callItemModel = CallHelper.getCallItem(position);
        return SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(callItemModel.image.toString()),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                             Row(
                               children: [
                                 Text(callItemModel.name),
                               ],
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top: 2,left: 15),
                               child: Text(callItemModel.dateTime),
                               )
        
                            ],
                          ),
                      const  Icon(Icons.call,color: Colors.green,)
                        ],
                      ))
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}