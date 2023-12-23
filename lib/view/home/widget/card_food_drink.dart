import 'package:flutter/material.dart';

class CardFoodDrink extends StatelessWidget {
  const CardFoodDrink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12,top: 12,bottom: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        height: 250,
                        child: Image.network(
                            'https://d1ralsognjng37.cloudfront.net/a96aeaae-f23e-4ae4-b885-a41ad288c0ea.jpeg'),
                      ),
                    ),
                  ),
                ),
                const Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 200, left: 12),
                      child: Text(
                        '20% OFF ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            backgroundColor: Colors.pink),
                      ),
                    ),
                  ),
                ),
                const Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 225, left: 12),
                      child: Text(
                        'Free Delivery ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            backgroundColor: Colors.pink),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
