import 'package:flutter/material.dart';
import 'package:food_panda/view/business_owner/add_restaurant.dart';
import 'view/home.dart';
import 'view/home/widget/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.pinkAccent,
        actions:  [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddRestuarant()));
            },
            icon: const Icon(Icons.favorite_outline),
          ),

          Icon(Icons.shopping_basket_outlined),
          SizedBox(
            width: 10,
          ),
        ],
        title: const ListTile(
          title: Text(
            '2 st 562',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          subtitle: Text(
            'Phnom Penh',
            style: TextStyle(color: Colors.white),
          ),
        ),
        leadingWidth: 35,
      ),
      body: myHome(),
      drawer: SafeArea(
        child: myDrawer(),
      ),
    );
  }
}
