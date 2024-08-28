import 'package:flutter/material.dart';

class sample extends StatelessWidget {
  const sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        centerTitle: true,
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return          
         ListTile(
        leading: CircleAvatar(
          child: Image.asset(
            "asset/google-logo-transparent-png-11659866441wanynck5pd.png",
          ),
        ),
        title: Text("Person $index"),
        trailing: Icon(Icons.more_vert),
      );
      },
      itemCount: 20,
      separatorBuilder: (BuildContext  context, int index) => Divider(),
      ),
    );
  }
}
