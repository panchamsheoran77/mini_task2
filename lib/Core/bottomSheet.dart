import 'package:flutter/material.dart';
import 'package:mini_task2/editEvent/editEvent.dart';

class bottomSheet {
  void settingModalBottomSheet(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.edit),
                    title: new Text('Edit'),
                    onTap: () {

                    }
                ),
                new ListTile(
                  leading: new Icon(Icons.delete),
                  title: new Text('Delete'),
                  onTap: () => {

                  },
                ),
              ],
            ),
          );
        }
    );
  }
}