import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble(
    this.message,
    this.isMe,
    {this.key}
  );

  final Key key;
  final String message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
      margin: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      child: Align(
        alignment: (!isMe?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: !isMe?Radius.circular(0):Radius.circular(12),
              bottomRight: isMe?Radius.circular(0):Radius.circular(12),
            ),
            color: (isMe?Colors.grey.shade200:Colors.blue[200]),
          ),
          padding: EdgeInsets.all(16),
          child: Text(
            message,
            style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
   /*   decoration: BoxDecoration(
        color: isMe?Colors.grey:Theme.of(context).accentColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: !isMe?Radius.circular(0):Radius.circular(12),
          bottomRight: isMe?Radius.circular(0):Radius.circular(12),
        ),
      ),
      width: 140,*/

     /* child: Text(
        message,
        style: TextStyle(
          color: isMe?Colors.black
              :Theme.of(context).accentTextTheme.headline1.color,
        ),*/
      ),
    );
  }
}
