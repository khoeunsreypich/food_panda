import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipe_to/swipe_to.dart';
import 'beer.dart';
import 'details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //top root widget
    return MaterialApp(
      themeMode: ThemeMode.system,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[50],
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Poppins')
      ),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.grey[50],
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Poppins')
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  {
   int _id = 0;
   var beer ;
  void _getData() async {
    var pref = await SharedPreferences.getInstance();
    setState(() {
      _id = pref.getInt('key') ?? 0;
    });
  }
  @override
  void initState(){
    super.initState();
    _getData();
  }
  Future<String> getWeatherForCast() {
    return Future.delayed(const Duration(seconds: 4), () => 'Party Cloudy');
  }

  Future<List<Beer>> getUserData() async {
    var response = await http.get(Uri.https('api.punkapi.com', '/v2/beers'));
    print(response.statusCode);
    if (response.statusCode == 200) {
      var users = (json.decode(response.body) as List)
          .map((users) => Beer.fromJson(users))
          .toList();
      return users;
    } else {
      throw Exception('Failed');
    }
  }

 // int _counter = 0;

  void _incrementCounter() async {
    var pref = await SharedPreferences.getInstance();
    setState(() {
      _id;
      pref.setInt('key', _id);
    });

  }

  @override
  Widget build(BuildContext context) {
    initState;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Setting', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(
            label: 'Help',
            icon: Icon(Icons.help),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title, style: const TextStyle(fontWeight: FontWeight.w600),),
        actions: [
          ElevatedButton(
              onPressed: () {
                //DetailScreen(id);
                _incrementCounter();
                print('this is id when press ${_id}');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen(beer: beer[_id-1], )));



              },
              child: const Icon(Icons.favorite)),
        ],
      ),
      body: Center(
          child: FutureBuilder(
            //future: getWeatherForCast(),
              future: getUserData(),
              builder: (context, snapShot) {
                if (snapShot.connectionState == ConnectionState.done) {
                   beer = snapShot.data;
                  return ListView.builder(
                    itemCount: beer!.length,
                    itemBuilder: (context, index) {
                      return SwipeTo(
                        //onRightSwipe: (onRightSwipe){},
                        onLeftSwipe: (onLeftSwipe) {},
                        child: ListTile(

                            onTap: () {
                              //print('beer with id ${data[index].id}');
                              //code to open new screen
                              _incrementCounter();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailScreen(beer: beer[index],)));
                              this._id = beer[index].id!;
                            },
                            title: Text(beer[index].name.toString()),
                            subtitle: Text(beer[index].description.toString()),
                            //leading: Text(data[index].imageUrl),
                            leading: Image.network(beer[index].imageUrl),

                            trailing: const Icon(Icons.favorite),

                            )
                        );

                    },
                  );
                  // return Text(snapShot.data.toString());
                } else {
                  return const CircularProgressIndicator();
                }
              })),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



