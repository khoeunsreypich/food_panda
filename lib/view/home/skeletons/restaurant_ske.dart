import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CardFoodDrinkSkeleton extends StatelessWidget {
  const CardFoodDrinkSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Padding(
        padding: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://images.deliveryhero.io/image/fd-kh/LH/t4qx-hero.jpg?width=512&height=384&quality=45',
                    height: 200,
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
                      style: TextStyle(color: Colors.white, fontSize: 17),
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
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 5,
              ),
              Text(
                'Tube Coffee',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text('\$\$\$ Coffee'),
              SizedBox(
                height: 3,
              ),
              Text('\$ 0.75 delevery fee')
            ],
          ),
        ),
      ),
    );
  }
}