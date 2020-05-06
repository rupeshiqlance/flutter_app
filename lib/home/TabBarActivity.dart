
import 'package:flutter/material.dart';
import 'package:flutter_app/home/modal/Contact.dart';

class TabBarActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TabView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyTabViewState(),
    );
  }
}

class  MyTabViewState extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 3, child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(text: "Email", icon: Icon(Icons.email)),
            Tab(text: "Seeting",icon: Icon(Icons.build)),
            Tab(text: "Time", icon: Icon(Icons.alarm)),
          ]),
        /*  title: Text('Tabs Demo'),*/
        ),
        body: TabBarView(children: [
          EmailPage(),
          SettingPage(),
          TimePage(),
        ]),
      )),
    );
  }
}
List<Contact> missedCallContacts = [
  Contact(fullName: 'Pratap Kumar', email: 'pratap@example.com'),
  Contact(fullName: 'Jagadeesh', email: 'Jagadeesh@example.com'),
  Contact(fullName: 'Srinivas', email: 'Srinivas@example.com'),
  Contact(fullName: 'Narendra', email: 'Narendra@example.com'),
  Contact(fullName: 'Sravan ', email: 'Sravan@example.com'),
  Contact(fullName: 'Ranganadh', email: 'Ranganadh@example.com'),
  Contact(fullName: 'Karthik', email: 'Karthik@example.com'),
  Contact(fullName: 'Saranya', email: 'Saranya@example.com'),
  Contact(fullName: 'Mahesh', email: 'Mahesh@example.com'),
];

List<Contact> receivedCallContacts = [
  Contact(fullName: 'Pratap Kumar', email: 'pratap@example.com'),
  Contact(fullName: 'Jagadeesh', email: 'Jagadeesh@example.com'),
  Contact(fullName: 'Srinivas', email: 'Srinivas@example.com'),
];

List<Contact> dialledCallContacts = [
  Contact(fullName: 'Ranganadh', email: 'Ranganadh@example.com'),
  Contact(fullName: 'Karthik', email: 'Karthik@example.com'),
  Contact(fullName: 'Saranya', email: 'Saranya@example.com'),
  Contact(fullName: 'Mahesh', email: 'Mahesh@example.com'),
];

class SettingPage extends StatefulWidget {
  @override  State<StatefulWidget> createState() {
       return new _MissedCallsPage();
  }
}

class _MissedCallsPage extends State<SettingPage> {
  @override  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                itemCount: missedCallContacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${missedCallContacts[index].fullName}',
                    ),
                    subtitle: Text('${missedCallContacts[index].email}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('${missedCallContacts[index].fullName.substring(
                            0, 1)}')),
                    onTap: () => _onTapItem(context, missedCallContacts[index]),
                  );
                },
              ),
            ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
  }
}

class TimePage extends StatefulWidget {
  @override  State<StatefulWidget> createState() {
        return new _ReceivedCallsPage();
  }
}

class _ReceivedCallsPage extends State<TimePage> {
  @override  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                itemCount: receivedCallContacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${receivedCallContacts[index].fullName}',
                    ),
                    subtitle: Text('${receivedCallContacts[index].email}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,
                        child:
                        Text('${receivedCallContacts[index].fullName.substring(
                            0, 1)}')),
                    onTap: () => _onTapItem(context, receivedCallContacts[index]),
                  );
                },
              ),
            ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
  }
}

class EmailPage extends StatefulWidget {
  @override  State<StatefulWidget> createState() {
       return new _DialledCallsPage();
  }
}

class _DialledCallsPage extends State<EmailPage> {
  @override  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                itemCount: dialledCallContacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${dialledCallContacts[index].fullName}',
                    ),
                    subtitle: Text('${dialledCallContacts[index].email}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,
                        child:
                        Text('${dialledCallContacts[index].fullName.substring(
                            0, 1)}')),
                    onTap: () => _onTapItem(context, dialledCallContacts[index]),
                  );
                },
              ),
            ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Tap on " + ' - ' + post.fullName)));
  }
}


