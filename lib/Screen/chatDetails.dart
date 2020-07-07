import 'package:flutter/material.dart';
import 'Chat.dart';
import '../model/chat.dart';

class chatDetails extends StatefulWidget {
  @override
  _chatDetailsState createState() => _chatDetailsState();
}

class _chatDetailsState extends State<chatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('name')
      ),
         
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.camera_alt),
            Icon(Icons.attach_file),
            Icon(Icons.tag_faces),
            Container(
              width: 250,
            child:  TextField(
              decoration: InputDecoration(
              border: InputBorder.none,
             hintText: ' Enter message '
            ),
            ),
            ),
            FloatingActionButton(
              onPressed:(){},
              child: Icon(Icons.send), 
            )
          ],
        ) ,
      ),
    );
  }
}