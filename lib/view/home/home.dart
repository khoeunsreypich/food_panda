import 'package:flutter/material.dart';

class myHome extends StatelessWidget {
  myHome({
    super.key,
  });
  var boxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
  );

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
                          width: 150,
                          height: 150,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQhxVn-YlbDCRfY7sZgkuFkq8TfQpW6-36QA&usqp=CAU'),
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
                              children: [
                                SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.network(
                                          'https://images.deliveryhero.io/image/foodpanda/homepage/refresh-hero-home-kh.png'),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: boxDecoration,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pick-up',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Up to 50% off'),
                                    Column(
                                      verticalDirection: VerticalDirection.up,
                                      children: [
                                        SizedBox(
                                          width: 160,
                                          height: 120,
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              margin: EdgeInsets.only(left: 10),
                                              child: Image.network(
                                                  'https://images.deliveryhero.io/image/foodpanda/homepage/refresh-hero-home-kh.png'),
                                            ),
                                          ),
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
                              padding: const EdgeInsets.only(left: 12, top: 8),
                              child: Container(
                                decoration: boxDecoration,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
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
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 12),
                                                child: Text('Express'),
                                              ),
                                              //const Text('Delivery'),
                                              Row(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 12),
                                                    child: Text('Delivery'),
                                                  ),
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        width: 115,
                                                        height: 40.5,
                                                        child: Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Image.network(
                                                              'https://images.deliveryhero.io/image/foodpanda/homepage/refresh-hero-home-kh.png'),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ]),
                                      ],
                                    ),
                                  ],
                                ),
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
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
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
          ),
        ),
      ],
    );
  }
}
