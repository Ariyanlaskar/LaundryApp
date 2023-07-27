import 'package:flutter/material.dart';
import 'package:my_first_app/models/location.dart';
import 'package:my_first_app/models/order_model.dart';
import 'package:my_first_app/pages/details_page.dart';

// ignore: camel_case_types
class deskpage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final text;
  const deskpage({super.key, required this.text});

  @override
  State<deskpage> createState() => _deskpageState();
}

// ignore: camel_case_types
class _deskpageState extends State<deskpage> {
  static List<Location> locations = [];
  static List<orderModel> orders = [];
  @override
  Widget build(BuildContext context) {
    locations = Location.getLocations();
    orders = orderModel.getOrder();

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          backgroundColor: const Color.fromARGB(255, 9, 65, 161),
        ),
        body: Stack(
          children: [
            Container(
              height: 649,
              color: const Color.fromARGB(255, 76, 166, 239),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            iconSize: 32,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 14),
                          child: const Text(
                            'Welcome Back,',
                            style: TextStyle(
                                color: Color.fromARGB(255, 220, 219, 219),
                                fontSize: 27,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          width: 296,
                          // color: Colors.green,
                          margin: const EdgeInsets.only(left: 14),
                          child: Text(
                            '${widget.text}!',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 220, 219, 219),
                                fontSize: 27,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 80, left: 5, right: 13, bottom: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 18, 90, 150),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(255, 13, 7, 126),
                                  offset: Offset(0, 2.7),
                                  blurRadius: 3,
                                  spreadRadius: 2)
                            ],
                            border: Border.all(
                                color: const Color.fromARGB(255, 13, 7, 126)),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(80),
                                topRight: Radius.circular(80),
                                bottomLeft: Radius.circular(80),
                                bottomRight: Radius.circular(80)),
                          ),
                          child: Image.asset(
                            'assets/images/user.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
            Positioned(
                top: 210,
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  // height: ,
                  width: 100,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 235, 233, 233),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            child: Text(
                              'New Locations',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.63),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                height: 310,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: locations.length,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                    width: 10,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 13),
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 250,
                                            height: 100,
                                            decoration: BoxDecoration(
                                                color: locations[index].color,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Stack(children: [
                                              Stack(
                                                // mainAxisAlignment:
                                                //     MainAxisAlignment.start,
                                                // crossAxisAlignment:
                                                //     CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        height: 100,
                                                        width: 250,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          // color: Colors.red)
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 10,
                                                                      top: 13),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Text(
                                                                locations[index]
                                                                    .address,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white
                                                                        .withOpacity(
                                                                            .76),
                                                                    fontSize:
                                                                        16.4,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 11,
                                                                      top: 0),
                                                              child: Text(
                                                                locations[index]
                                                                    .state,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white
                                                                        .withOpacity(
                                                                            .76),
                                                                    fontSize:
                                                                        14.4,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Positioned(
                                                      right: 0,
                                                      top: 9,
                                                      child: Image.asset(
                                                        locations[index]
                                                            .imgpath,
                                                        // color: Colors.black,
                                                      )),
                                                ],
                                              ),
                                            ]),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                          height: 600,
                          top: 174,
                          child: SizedBox(
                            height: 600,
                            width: 412,
                            // color: Colors.red,
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 14),
                                          child: Text(
                                            'Latest Orders',
                                            style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(.63),
                                                fontSize: 20.6,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                right: 13),
                                            child: Text('View All',
                                                style: TextStyle(
                                                    color: const Color.fromARGB(
                                                            255, 7, 134, 237)
                                                        .withOpacity(.63),
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.w700)))
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        SizedBox(
                                          height: 240,
                                          // color: Colors.green,
                                          child: ListView.separated(
                                            itemCount: orders.length,
                                            // shrinkWrap: true,
                                            // scrollDirection: Axis.vertical,
                                            separatorBuilder:
                                                (context, index) =>
                                                    const SizedBox(
                                              height: 6,
                                            ),
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            detailsPage(
                                                                indx: index),
                                                      ));
                                                },
                                                child: (Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 15,
                                                      top: 10,
                                                      right: 15),
                                                  height: 98,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  // width: 100,
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 30,
                                                                  top: 10),
                                                          child: Text(
                                                            orders[index].type,
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        .7)),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 8,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 30),
                                                              child: const Text(
                                                                'Placed On : ',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        15.6),
                                                              ),
                                                            ),
                                                            Text(
                                                              '${orders[index].orderDate}',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.76),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      15.6),
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 30),
                                                              child: const Text(
                                                                'Delivery On : ',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        15.6),
                                                              ),
                                                            ),
                                                            Text(
                                                              '${orders[index].delDate}',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.76),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      15.6),
                                                            )
                                                          ],
                                                        )
                                                      ]),
                                                )),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ))
          ],
        ));
  }
}
