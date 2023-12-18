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
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 12),
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
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQhxVn-YlbDCRfY7sZgkuFkq8TfQpW6-36QA&usqp=CAU')),
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
                children: [
                  Expanded(
                    child: Container(
                      decoration: boxDecoration,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, top: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shop',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text('Groseris and more'),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             mainAxisSize: MainAxisSize.max,
                             // crossAxisAlignment: CrossAxisAlignment.end,
                              verticalDirection: VerticalDirection.up,
                              children: [
                                SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: Image.network(
                                        'https://images.deliveryhero.io/image/foodpanda/homepage/refresh-hero-home-kh.png')),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.pinkAccent,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              color: Colors.pinkAccent,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.purple,
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
        )
      ],
    );
  }
}
