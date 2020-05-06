import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomeBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHome(),
    );
  }
}

class myHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return _MyHomeState();
  }
}

class _MyHomeState extends State<myHome> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  int index = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Activity',
    ),
    Text(
      'Index 2: Notification',
    ),
    Text(
      'Index 2: Profile',
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (int index) {
            setState(() {
              this.index = index;
            }
            );
            _onItemTapped(index);
          },
          items: [
             BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: index==0? Image.asset('assets/nav/ic_home_active.png', width: 20,height: 20): Image.asset('assets/nav/ic_home.png',width: 20,height: 20),
                title:  index==0? Text("Home", style:  TextStyle( color: const Color(0xFF06244e), fontSize: 14.0)):Text("Home", style:  TextStyle( color: const Color.fromARGB(255, 145, 158, 171), fontSize: 14.0))),
             BottomNavigationBarItem(
                icon: index==1? Image.asset('assets/nav/ic_activity_active.png',width: 20,height: 20): Image.asset('assets/nav/ic_activity.png',width: 20,height: 20),
                 title:  index==1? Text("Activity", style:  TextStyle( color: const Color(0xFF06244e), fontSize: 14.0)):Text("Activity", style:  TextStyle( color: const Color.fromARGB(255, 145, 158, 171), fontSize: 14.0))),
             BottomNavigationBarItem(
                icon: index==2? Image.asset('assets/nav/ic_notification_active.png',width: 20,height: 20): Image.asset('assets/nav/ic_notification.png',width: 20,height: 20),
                 title:  index==2? Text("Notification", style:  TextStyle( color: const Color(0xFF06244e), fontSize: 14.0)):Text("Notification", style:  TextStyle( color: const Color.fromARGB(255, 145, 158, 171), fontSize: 14.0))),
             BottomNavigationBarItem(
                icon: index==3? Image.asset('assets/nav/ic_profile_active.png',width: 20,height: 20): Image.asset('assets/nav/ic_profile.png',width: 20,height: 20),
                 title:  index==3? Text("Profile", style:  TextStyle( color: const Color(0xFF06244e), fontSize: 14.0)):Text("Profile", style:  TextStyle( color: const Color.fromARGB(255, 145, 158, 171), fontSize: 14.0))),
          ])
       /* currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Color.fromARGB(255, 243, 243, 247),
        onTap: _onItemTapped,*/
      );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
