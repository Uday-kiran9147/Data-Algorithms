import 'package:dsa/Screens/bottom_nav_bar/algotithms.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<Widget> Algorith_list = [];

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List listname = [
    'uday',
    'ajay',
    'nani',
    'teja',
    'shiva',
    'chintu',
    'uday',
    'ajay',
    'nani',
    'teja',
    'shiva',
    'chintu',
    'uday',
    'ajay',
    'nani',
    'teja',
    'shiva',
    'chintu'
  ];
  Map listname2 = {
    "name": [
      'uday',
      'ajay',
      'uday',
      'ajay',
      'nani',
      'teja',
      'shiva',
      'chintu',
      'nani',
      'teja',
      'shiva',
      'chintu',
      'uday',
      'ajay',
      'nani',
      'teja',
      'shiva',
      'chintu'
    ],
    'number': [
      'uday',
      'ajay',
      'uday',
      'ajay',
      'nani',
      'teja',
      'shiva',
      'chintu',
      'nani',
      'teja',
      'shiva',
      'chintu',
      'uday',
      'ajay',
      'nani',
      'teja',
      'shiva',
      'chintu'
    ]
  };

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      ListView.builder(
          itemCount: listname.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () => {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Algorithms()))
                },
                title: Text(listname2['name'][index]),
                subtitle: Text(listname2['number'][index]),
              ),
            );
          }),
      Algorithms(),
      Text(
        'CODE',
        style: optionStyle,
      ),
      Text(
        'Settings',
        style: optionStyle,
      ),
    ];
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Default Home Screen'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.red,
          // Theme.of(context).colorScheme.primary,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.cyan,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Algorith',
              backgroundColor: Colors.cyan,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'CODE',
              backgroundColor: Colors.cyan,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
