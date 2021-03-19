import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final _controller=new TextEditingController();
  var _enteredMessage='';

  void _sendMessage()async{
    FocusScope.of(context).unfocus();
    final user=await FirebaseAuth.instance.currentUser();
    Firestore.instance.collection('chat').add({
      'text':_enteredMessage,
      'createdAt':Timestamp.now(),
      'userId':user.uid,
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: 260,
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Send a message...',
                      contentPadding: EdgeInsets.only(left: 5),
                    ),
                    textDirection: TextDirection.rtl,
                    autofocus: false,
                    maxLines: 4,
                    onChanged: (value){
                      setState(() {
                        _enteredMessage = value;
                        value=null;
                      });
                    },
                  ),
                ),
              ),
              Positioned(
                right: -3,
                top: 12,
                child: ClipPath(
                  clipper: TriangleClipper(),
                  child: Container(
                    height: 20,
                    width: 30,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          ClipOval(
            child: Material(
              color: Colors.grey[700],
              child: InkWell(
                hoverColor: Colors.grey[600],
                child: SizedBox(
                  child: IconButton(
                    icon:Center(child:Icon(Icons.send,color:Colors.deepPurple,)),
                    onPressed: null,
                  ),
                ),
                onTap: _enteredMessage.trim().isEmpty?null:_sendMessage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
