import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'beer.dart';

class DetailScreen extends StatefulWidget {
  Beer? beer;
  int? beerId;
  DetailScreen({super.key, this.beerId, this.beer});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

void _getData() async {
  var pref = await SharedPreferences.getInstance();
  SetState() {
    pref.getInt('key');
  }
}




class _DetailScreenState extends State<DetailScreen> {

  @override

  Widget build(BuildContext context ) {

    print(widget.beer!.name);
    print(widget.beer!.id);
   // return const Placeholder();
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(child:Column(
        children: [
          Image.network(widget.beer!.imageUrl.toString(),height: 350),
          Text(widget.beer!.name.toString()),
          Text(widget.beer!.description.toString()),
        ],
      )
      ),
    );
  }
}
