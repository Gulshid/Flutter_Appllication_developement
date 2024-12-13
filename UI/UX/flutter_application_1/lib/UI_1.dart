import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text('first app'),
          backgroundColor: Colors.teal,
          centerTitle: true,
          actions: [Icon(Icons.menu)],
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('this is testing'),
            Text('this is testing'),
            Text('this is testing'),
            Text('this is testing'),
            Text('this is testing'),
            Icon(Icons.favorite),
            Icon(Icons.favorite),
            Icon(Icons.favorite),
            Icon(Icons.favorite),
            Icon(Icons.favorite),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
              ],
            ),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            Icon(Icons.add),
            SizedBox(height: 40),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.favorite), Text('fav')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.notification_important_sharp),
                      Text('fav')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.amber,
                      ),
                      Text(
                        'fav',
                        style: TextStyle(color: Colors.amber),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}