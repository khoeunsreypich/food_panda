import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_panda/products.dart';
import 'package:http/http.dart' as http;

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
      home: const MyHomePage(title:''),

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
      appBar: AppBar(
       // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.pinkAccent,
        actions: const [
          Icon(Icons.favorite_outline),
          SizedBox(width: 10,),
          Icon(Icons.shopping_basket_outlined),
          SizedBox(width: 10,),
        ],
        title: const ListTile(
          title: Text('2 st 562',style: TextStyle(fontWeight: FontWeight.w600), ) ,
          subtitle: Text('Phnom Penh'),
        ),

      ),
      body:  CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 60,
            flexibleSpace: FlexibleSpaceBar(
              background:Container(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 15,top: 0),
                color: Colors.pinkAccent,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.search),
                      SizedBox(width: 10,),
                      Text('Search & Shop Restaurant'),
                    ],
                  ),
                ),
              ) ,

            ),
          )
        ],

      ),

      drawer: Drawer(
        width: MediaQuery.of(context).size.width*.85,
        child:  ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: const Text('Khoeun Sreypich'),

              accountEmail:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Personal Account'),

                  Padding(
                     padding: const EdgeInsets.only(right: 10),

                    child: ElevatedButton(
                        onPressed: (){},
                        child:const Text('Switch')
                    ),
                  ),
                ],
              ),
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network('https://iv1.lisimg.com/image/21450866/740full-dasha-taran-(ii).jpg',
                    fit: BoxFit.fill,
                  )),
              currentAccountPictureSize:const Size.square(50),

            ),
             const ListTile(
                 title:  Text('Call'),
                 leading: Icon(Icons.call_outlined),
             ),
            const ListTile(
                title:  Text('Saved Message'),
              leading: Icon(Icons.save_alt_outlined),
                    
            ),
            const ListTile(
                title:  Text('option 1'),
              leading: Icon(Icons.add),
            ),
            const ListTile(
                title:  Text('option 1'),
              leading: Icon(Icons.contact_emergency),
            ),
          ],

        ),
      ),

    );
  }
}
