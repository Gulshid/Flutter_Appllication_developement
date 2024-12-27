import 'package:flutter/material.dart';

class Instagram_UI extends StatefulWidget {
  const Instagram_UI({super.key});

  @override
  State<Instagram_UI> createState() => _Instagram_UIState();
}

class _Instagram_UIState extends State<Instagram_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: 
           Center(
             child: Text(
              "Instagram",
              style: TextStyle(
                fontFamily: "Roboto",
                fontStyle: FontStyle.italic,
                fontSize: 32,
                color: Colors.black,
              ),
                       ),
           ),

           leading: 
           IconButton(
         icon:   Icon(Icons.camera_alt,color: Colors.black),
           onPressed: (){}
           ),
        
        actions: [
          IconButton(
            icon: Icon(Icons.messenger_sharp, color: Colors.black),
            onPressed: () {},
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        children: [
         
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // Number of stories
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/img_1.jpg'),
                        ),
                        SizedBox(height: 5),
                        Text(
                          index == 0 ? "Your Story" : "User $index",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Divider(height: 1, color: Colors.grey[300]),

          
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/img_3.jpg'),
                ),
                title: Text("westley.windler"),
                trailing: Icon(Icons.more_vert),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                'assets/img_4.jpg',
                height: 300,
                
                fit: BoxFit.cover,
              ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.chat_bubble_outline),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {},
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.bookmark_border),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "2,875 Likes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RichText(
                  text: TextSpan(
                    text: "marinadillaco ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Hi!! #marinad",
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}