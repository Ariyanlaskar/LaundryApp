// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_first_app/models/detail.dart';

// ignore: camel_case_types
class detailsPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final indx;
  const detailsPage({super.key, required this.indx});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

// ignore: camel_case_types
class _detailsPageState extends State<detailsPage> {
  static List<Detail> details = [];
  // final ind;
  @override
  Widget build(BuildContext context) {
    details = Detail.getDetails();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        backgroundColor: const Color.fromARGB(255, 9, 65, 161),
      ),
      body: Stack(
        children: [
          Positioned(
              child: Container(
            color: const Color.fromARGB(255, 76, 166, 239),
          )),
          Positioned(
              top: 0,
              left: -4,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 33,
                  color: Colors.white,
                ),
              )),
          Positioned(
              top: 55,
              left: 13,
              child: Text(
                "Details About",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white.withOpacity(.9),
                    fontWeight: FontWeight.w500),
              )),
          Positioned(
              top: 83,
              left: 13,
              child: Text(
                'Order ${details[widget.indx].orderId}',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white.withOpacity(.9),
                    fontWeight: FontWeight.w600),
              )),
          OrderDetailSection(context),
          Positioned(
              top: 530,
              left: 10,
              right: 10,
              bottom: 7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 238, 238, 238),
                ),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 14),
                          // height: 10,
                          child: Text(
                            details[widget.indx].status,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(.7)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 10),
                          child: const Text(
                            'Estimated Delivery Date',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 133, 131, 131)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            details[widget.indx].EDT,
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 69, 69, 69)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: SizedBox(
                        // color: Colors.red,
                        height: 70,
                        // width: 100,
                        child: Image.asset('assets/images/washlogo.png'),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Stack OrderDetailSection(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 130,
          left: 10,
          right: 10,
          bottom: 126,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Stack(
          children: [
            Positioned(
              top: 140,
              left: 10,
              right: 10,
              child: Container(
                margin: const EdgeInsets.only(left: 10, top: 7),
                height: 30,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: const Text(
                  'ORDER DETAILS',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 170,
              left: 10,
              right: 10,
              child: Container(
                margin: const EdgeInsets.only(left: 10, top: 6),
                height: 30,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: const Text(
                  'WASHING AND FOLDING',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 122, 121, 121)),
                ),
              ),
            ),
            const Positioned(
              top: -235,
              bottom: 0,
              left: 12,
              right: 12,
              child: Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Color.fromARGB(255, 212, 210, 210),
              ),
            ),
            Positioned(
                top: 210,
                left: 10,
                right: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Container(
                          // color: Colors.red,
                          margin: const EdgeInsets.only(left: 10),
                          height: 30,
                          child: Text(
                            details[widget.indx].Mtshirt,
                            style: const TextStyle(fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, top: 1),
                          height: 30,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'X',
                              style: TextStyle(
                                  fontSize: 11.5,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, top: 1),
                          height: 30,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text(
                              'T-shirts(Men)',
                              style: TextStyle(
                                  fontSize: 14.4,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 195, top: 1),
                          height: 30,
                          child: Text(
                            ('\$${int.parse(details[widget.indx].Mtshirt) * int.parse(details[widget.indx].tPrice)}.00'),
                            style: const TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 148, 148, 148)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          // color: Colors.red,
                          margin: const EdgeInsets.only(left: 10),
                          height: 30,
                          child: Text(
                            details[widget.indx].Ftshirt,
                            style: const TextStyle(fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, top: 1),
                          height: 30,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'X',
                              style: TextStyle(
                                  fontSize: 11.5,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, top: 1),
                          height: 30,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text(
                              'T-shirts(Female)',
                              style: TextStyle(
                                  fontSize: 14.4,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 175, top: 1),
                          height: 30,
                          child: Text(
                            ('\$${int.parse(details[widget.indx].Ftshirt) * int.parse(details[widget.indx].tPrice)}.00'),
                            style: const TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 148, 148, 148)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          // color: Colors.red,
                          margin: const EdgeInsets.only(left: 10),
                          height: 30,
                          child: Text(
                            details[widget.indx].Fpants,
                            style: const TextStyle(fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, top: 1),
                          height: 30,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'X',
                              style: TextStyle(
                                  fontSize: 11.5,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, top: 1),
                          height: 30,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text(
                              'Pant(Female)',
                              style: TextStyle(
                                  fontSize: 14.4,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 194, top: 1),
                          height: 30,
                          child: Text(
                            ('\$${int.parse(details[widget.indx].Fpants) * int.parse(details[widget.indx].PPrice)}.00'),
                            style: const TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 148, 148, 148)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          // color: Colors.red,
                          margin: const EdgeInsets.only(left: 10),
                          height: 30,
                          child: Text(
                            details[widget.indx].Mjeans,
                            style: const TextStyle(fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, top: 1),
                          height: 30,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'X',
                              style: TextStyle(
                                  fontSize: 11.5,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 1, top: 1),
                          height: 30,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text(
                              'Jeans(Men)',
                              style: TextStyle(
                                  fontSize: 14.4,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 203, top: 1),
                          height: 30,
                          child: Text(
                            ('\$${int.parse(details[widget.indx].Mjeans) * int.parse(details[widget.indx].JPrice)}.00'),
                            style: const TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 148, 148, 148)),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            Positioned(
              top: 337,
              left: 12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: SizedBox(
                      height: 30,
                      width: 100,
                      // color: Colors.green,
                      child: Text('IRONING',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 122, 121, 121))),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            // color: Colors.red,
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            height: 30,
                            child: Text(
                              details[widget.indx].Mjeans,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 1, top: 10),
                            height: 30,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'X',
                                style: TextStyle(
                                    fontSize: 11.5,
                                    color: Color.fromARGB(255, 148, 148, 148)),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 1, top: 10),
                            height: 30,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 2),
                              child: Text(
                                'Jeans(Men)',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 148, 148, 148)),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 195, top: 1),
                            height: 30,
                            child: Text(
                              ('\$${int.parse(details[widget.indx].Mjeans) * int.parse(details[widget.indx].JPrice)}.00'),
                              style: const TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 87,
                            // color: Colors.red,
                            margin: const EdgeInsets.only(left: 10, top: 5),
                            // color: Colors.red,
                            child: const Text(
                              'Subtotal',
                              style: TextStyle(
                                fontSize: 18.7,
                              ),
                            ),
                          ),
                          Container(
                            width: 87,
                            margin: const EdgeInsets.only(left: 210, top: 5),
                            // color: Colors.red,
                            child: Text(
                              '\$${(2 * int.parse(details[widget.indx].Mjeans) * int.parse(details[widget.indx].JPrice)) + (int.parse(details[widget.indx].Mtshirt) * int.parse(details[widget.indx].tPrice)) + (int.parse(details[widget.indx].Ftshirt) * int.parse(details[widget.indx].tPrice)) + (int.parse(details[widget.indx].Fpants) * int.parse(details[widget.indx].PPrice))}',
                              style: const TextStyle(
                                  fontSize: 18.7,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 110,
                            // color: Colors.red,
                            margin: const EdgeInsets.only(left: 10, top: 5),
                            // color: Colors.red,
                            child: const Text(
                              'Delivery Fee',
                              style: TextStyle(
                                fontSize: 18.7,
                              ),
                            ),
                          ),
                          Container(
                            width: 74,
                            margin: const EdgeInsets.only(left: 187, top: 5),
                            // color: Colors.red,
                            child: const Text(
                              '\$70',
                              style: TextStyle(
                                  fontSize: 18.7,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 110,
                            // color: Colors.red,
                            margin: const EdgeInsets.only(left: 10, top: 5),
                            // color: Colors.red,
                            child: const Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 18.7,
                              ),
                            ),
                          ),
                          Container(
                            width: 74,
                            margin: const EdgeInsets.only(left: 187, top: 5),
                            // color: Colors.red,
                            child: const Text(
                              '\$${190 + 70}',
                              style: TextStyle(
                                  fontSize: 18.7,
                                  color: Color.fromARGB(255, 148, 148, 148)),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
