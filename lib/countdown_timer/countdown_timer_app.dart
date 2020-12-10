import 'package:flutter/material.dart';

class CountDownTimerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(primarySwatch: Colors.deepPurple),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purpleAccent,
              title: Text('Countdown Timer'),
            ),
            body: Center(
              child: Text(
                '00:00',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: SimpleDialog(
                      contentPadding: EdgeInsets.all(15),
                      children: [
                        Text(
                          'Set your time',
                          style: TextStyle(fontSize: 20),
                        ),
                        TextField(),
                        TextField(),
                        SizedBox(
                          height: 15,
                        ),
                        OutlineButton(
                            child: Text('Start'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })
                      ],
                    )
                    // initialTime: TimeOfDay(hour: 0, minute: 0),
                    );
              },
              child: Icon(Icons.alarm_add_outlined),
            )));
  }
}
