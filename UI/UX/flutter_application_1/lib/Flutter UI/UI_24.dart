import 'package:flutter/material.dart';

class Bottom_Navbar extends StatefulWidget {
  const Bottom_Navbar({super.key});

  @override
  State<Bottom_Navbar> createState() => _Bottom_NavbarState();
}

class _Bottom_NavbarState extends State<Bottom_Navbar> {
  List pages=[
    homes(),
    scre()
    
  ];
  int my_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[my_index],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
              onTap: (index) {
                setState(() {
                  my_index = index;
                });
              },
              currentIndex: my_index,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_ic_call),
            backgroundColor: const Color.fromARGB(255, 76, 122, 30),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            backgroundColor: const Color.fromARGB(255, 82, 28, 92),
            label: 'menu',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.search),
          //   backgroundColor: const Color.fromARGB(255, 166, 92, 31),
          //   label: 'Search',
          // ),
        ]),
      ),
      
    );
  }
}

class scre extends StatelessWidget {
  const scre({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,);
  }
}

class homes extends StatelessWidget {
  const homes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: const Color.fromARGB(255, 72, 243, 33),
    );
  }
}
