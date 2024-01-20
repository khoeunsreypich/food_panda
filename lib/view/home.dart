import 'package:flutter/material.dart';
import 'package:food_panda/data/response/status.dart';
import 'package:food_panda/viewmodels/restaurant_vm.dart';
import 'package:provider/provider.dart';

import 'home/skeletons/restaurant_ske.dart';
import 'home/widget/card_food_drink.dart';



class myHome extends StatefulWidget {
  myHome({
    super.key,
  });

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  var boxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
  );
  var _restaurantViewModel = RestaurantViewModel();
  @override
  void initState(){
    super.initState();
    _restaurantViewModel.getAllRestaurant();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: false,
          snap: false,
          floating: false,
          expandedHeight: 60,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 15, top: 0),
              color: Colors.pinkAccent,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search & Shop Restaurant',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12, top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Food Delivery',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text('Order food you love'),
                      ],
                    ),
                  ),
                  Column(
                    verticalDirection: VerticalDirection.up,
                    children: [
                      SizedBox(
                          width: 120,
                          height: 120,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            // child: Image.network(
                            //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQhxVn-YlbDCRfY7sZgkuFkq8TfQpW6-36QA&usqp=CAU'),
                            //
                            child: Image.asset('assets/image/burger.png'),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 300,
              //width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: boxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, top: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Shop',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const Text('Groseris and more'),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                    width: 230,
                                    height: 230,
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      // child: Image.network(
                                      //     'https://images.deliveryhero.io/image/foodpanda/homepage/refresh-hero-home-kh.png'),
                                      //
                                    child: Image.asset('assets/image/chicken.png',
                                    fit: BoxFit.contain,),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              width: double.infinity,
                              decoration: boxDecoration,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Pick-up',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text('Up to 50% off'),
                                    Column(
                                      //verticalDirection: VerticalDirection.up,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(left: 70,right: 0),
                                          // child: Image.network(
                                          //     'https://images.deliveryhero.io/image/foodpanda/homepage/refresh-hero-home-kh.png'),
                                          //
                                         child: Image.asset('assets/image/FoodBag.png',height: 130,),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2,top:8 ),
                              child: Container(
                                width: double.infinity,
                                decoration: boxDecoration,
                                child: Column(

                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 12),
                                        child: Text(
                                          'Pandasend',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight:
                                                  FontWeight.bold),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 12),
                                            child: Text(' Delivery \n Express ' ),
                                          ),

                                          Image.asset(
                                            'assets/image/burger1.png',
                                            width: 60,
                                            height: 60,
                                          )
                                        ],
                                      ),
                                      //const Text('Delivery'),

                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 12, top: 10),
            child: Text(
              'Popular Restaurants',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        // SliverToBoxAdapter(
        //   child: Stack(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(left: 12, top: 12),
        //         child: SizedBox(
        //           height: 200,
        //           child: Container(
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(20)),
        //             child: ClipRRect(
        //               borderRadius: BorderRadius.circular(15),
        //               child: Image.network(
        //                   'https://d1ralsognjng37.cloudfront.net/a96aeaae-f23e-4ae4-b885-a41ad288c0ea.jpeg'),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // )
        SliverToBoxAdapter(
          child: Container(
            height: 350,
            child: ChangeNotifierProvider(
              create: (context) => _restaurantViewModel,
              child: Consumer<RestaurantViewModel>(
                builder: (context, viewModel, _) {
                  switch(viewModel.response.status) {
                    case Status.LOADING:
                      return CircularProgressIndicator();
                    case Status.COMPLETED:
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          var restaurant = viewModel.response.data!.data![index];
                          return CardFoodDrink(restaurant: restaurant,);
                        },

                      );
                    case Status.ERROR:
                      return Text('Error');
                  }
                },
              ),
            )
          ),
        ),
      ],
    );
  }
}

