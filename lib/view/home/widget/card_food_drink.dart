import 'package:flutter/material.dart';

class CardFoodDrink extends StatelessWidget {
  const CardFoodDrink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width * .75,
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                      'https://d1ralsognjng37.cloudfront.net/a96aeaae-f23e-4ae4-b885-a41ad288c0ea.jpeg'),
                ),
              ),
              const Positioned(
               bottom: 15,
                left: 10,
                child: Text(
                  '20% OFF ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      backgroundColor: Colors.pink),
                ),
              ),
              const Positioned(
                top: 15,
                left: 10,
                child: Text(
                  'Free Delivery ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      backgroundColor: Colors.pink),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(right: 159,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tube Coffee',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('\$\$\$ Coffee',style: TextStyle(fontWeight: FontWeight.bold)),
                Text('\$ 0.75 delivery fee',style: TextStyle(fontWeight: FontWeight.bold,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
