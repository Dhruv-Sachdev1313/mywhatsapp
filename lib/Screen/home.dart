import 'package:flutter/material.dart';
import 'calls.dart';
import 'camera.dart';
import 'chat.dart';
import 'status.dart';


class Home extends StatefulWidget {
  @override
   _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override 
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}, color: Colors.white,),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){}, color: Colors.white,),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt, 
              color: Colors.white)),
            Tab(
              child: Text("Chats", 
              style: Theme.of(context).textTheme.button),
            ),
            Tab(
              child: Text("STATUS", 
              style: Theme.of(context).textTheme.button),
            ),
            Tab(
              child: Text("CALLS", 
              style: Theme.of(context).textTheme.button),
            ),
            
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Camera(),
          Chat(),
          Status(),
          Calls(),
        ],
      ),
     
     
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
} 