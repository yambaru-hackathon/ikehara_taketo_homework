import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:instagram_ui/add_page.dart';
import 'package:instagram_ui/user.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: const MyHomePage(title: '誕生年リスト'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();

    _fetchFirebaseData();
  }

  Future<void> _fetchFirebaseData() async {
    final db = FirebaseFirestore.instance;

    final event = await db.collection("users").get();
    // ignore: unused_local_variable
    final docs = event.docs;
    final users = docs.map((doc) => User.fromFirestore(doc)).toList();

    setState(() {
      this.users = users;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: users
            .map(
              (user) => ListTile(
                  title: Text(user.first),
                  subtitle: Text(user.last),
                  trailing: Text(user.born.toString()),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Select Year"),
                          content: SizedBox(
                            width: 300,
                            height: 300,
                            child: YearPicker(
                              firstDate: DateTime(DateTime.now().year - 300, 1),
                              lastDate: DateTime(DateTime.now().year + 100, 1),
                              // ignore: deprecated_member_use
                              initialDate: DateTime.now(),
                              selectedDate: DateTime(user.born),
                              onChanged: (DateTime dateTime) {
                                FirebaseFirestore.instance
                                    .collection('users')
                                    .doc(user.id)
                                    .update({'born': dateTime.year});

                                Navigator.pop(context);
                                _fetchFirebaseData();
                              },
                            ),
                          ),
                        );
                      },
                    );
                  },
                  onLongPress: () async {
                    final db = FirebaseFirestore.instance;

                    // 確認ダイアログを表示
                    bool confirmDelete = await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("確認"),
                          content: const Text("本当に削除しますか？"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                // "Yes" ボタンが押された場合は true を返す
                                Navigator.of(context).pop(true);
                              },
                              child: const Text("yes"),
                            ),
                            TextButton(
                              onPressed: () {
                                // "No" ボタンが押された場合は false を返す
                                Navigator.of(context).pop(false);
                              },
                              child: const Text("no"),
                            ),
                          ],
                        );
                      },
                    );

                    // ユーザーが "Yes" ボタンを押した場合のみ削除を実行
                    if (confirmDelete == true) {
                      await db.collection("users").doc(user.id).delete();
                      _fetchFirebaseData();
                    }
                  }),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToAddPage,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _goToAddPage() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddPage()),
    );
    _fetchFirebaseData();
  }
}
