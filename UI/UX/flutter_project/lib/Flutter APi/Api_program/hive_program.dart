import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class hive_1 extends StatefulWidget {
  const hive_1({super.key});

  @override
  State<hive_1> createState() => _hive_1State();
}

class _hive_1State extends State<hive_1> {
  var PeopleBox = Hive.box('MyBox');
  final TextEditingController name_controller = TextEditingController();
  final TextEditingController age_controller = TextEditingController();
  @override
  void dispose() {
    name_controller.dispose();
    age_controller.dispose();
    super.dispose();
  }

  // function of add or update
  void add_or_update({String? key}) {
    if (key != null) {
      final person = PeopleBox.get(key);
      if (person != null) {
        name_controller.text = person['name'] ?? "";
        age_controller.text = person['age']?.toString() ?? "";
      }
    } else {
      name_controller.clear();
      age_controller.clear();
    }
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                left: 15,
                right: 15,
                top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Name',
                  ),
                ),
                TextField(
                  controller: age_controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter Your age',
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                    onPressed: () {
                      final name = name_controller.text;
                      final age = int.tryParse(age_controller.text);
                      if (name.isEmpty || age == null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text('please enter a valid name and age')));
                        return;
                      }
                      if (key == null) {
                        final new_key =
                            DateTime.now().microsecondsSinceEpoch.toString();
                        PeopleBox.put(new_key, {"name": name, "age": age});
                      } else {
                        PeopleBox.put(key, {"name": name, "age": age});
                      }
                      Navigator.pop(context);
                    },
                    child: Text(key == null ? "Add" : "Update")),
              ],
            ),
          );
        });
  }

  void delete_operation(String? key) {
    PeopleBox.delete(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          'Hive Database',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: ValueListenableBuilder(
        valueListenable: PeopleBox.listenable(),
        builder: (context, box, widget) {
          if (PeopleBox.isEmpty) {
            return Center(
              child: Text('No item added'),
            );
          }
          return ListView.builder(
              itemCount: box.length,
              itemBuilder: (context, index) {
                final key_ = box.keyAt(index).toString();
                final item = box.get(key_);
                return Material(
                  color: Colors.white,
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10.r),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(item?['name'] ?? "Unknown"),
                      subtitle: Text("Age:${item?['age'] ?? " unknown"}"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () => add_or_update(key:key_),
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: ()=>delete_operation(key_), icon: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.orangeAccent,
        onPressed: () => add_or_update(),
        child: Icon(Icons.add),
      ),
    );
  }
}
