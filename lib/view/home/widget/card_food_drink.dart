import 'package:flutter/material.dart';
import 'package:food_panda/models/restaurant.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CardFoodDrink extends StatefulWidget {

  // const CardFoodDrink({
  //   Key? key,
  // }) : super(key: key);
  CardFoodDrink({super.key,
    this.restaurant
});
Datum? restaurant;

  @override
  State<CardFoodDrink> createState() => _CardFoodDrinkState();
}

class _CardFoodDrinkState extends State<CardFoodDrink> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 210,
                  width: MediaQuery.of(context).size.width*.75,
                  child: Image.network(
                    'https://cms.istad.co${widget.restaurant!.attributes?.picture!.data!.attributes!.url!}',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 15,
                child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 30,
                  decoration: BoxDecoration(
                    // /color: Colors.red,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          topRight: Radius.circular(5))),
                  child: Text(
                    '15%',
                    style: TextStyle(color: Colors.white, fontSize: 17,backgroundColor: Colors.red),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  alignment: Alignment.center,
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    '25mn',
                    style: TextStyle(fontSize: 17, color: Colors.white,backgroundColor: Colors.red),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.restaurant!.attributes!.name.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text('\$\$\$ ${widget.restaurant!.attributes?.category}'),
            SizedBox(
              height: 3,
            ),
            Text('\$ ${widget.restaurant?.attributes?.deliveryFee} delivery fee')
          ],
        ),
      ),
    );
  }
}