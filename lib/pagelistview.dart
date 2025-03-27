

import 'package:flutter/material.dart';

class Pagelistview extends StatefulWidget {
  const Pagelistview({super.key});

  @override
  State<Pagelistview> createState() => _PagelistviewState();
}

class _PagelistviewState extends State<Pagelistview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LISTVIEW'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 12,
      ),
      body: ListView.separated(
        itemCount: 30,
        separatorBuilder: (context, index)=>Divider(
          height: 10,
          color: Colors.grey[300],
        ),
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(
              vertical: 5, horizontal: 10
            ),
            elevation: 2,
            child: ListTile(
              contentPadding: EdgeInsets.all(15),
              leading: CircleAvatar(
                backgroundColor: Colors.green[300],
                child: Text('${index+1}'),
              ),
              title: Text('Item ${index+1}'),
              subtitle: Text('data'),
            ),
            
          );
        },
         

      ),
    );
  }
}