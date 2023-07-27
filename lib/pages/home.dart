// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_first_app/pages/login.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            // height: 400,
            // width: 412,
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/images/cloth_faded.png',
                        height: 120,
                        width: 800,
                      ),
                      Image.asset(
                        'assets/images/illustration.png',
                        height: 210,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  // child: Container(
                  height: 295,
                  width: 412,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 236, 233, 233),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(19),
                          topRight: Radius.circular(19))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 27, top: 30),
                        child: Text(
                          'Welcome To Laundary',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 25, 25, 25)
                                  .withOpacity(.78),
                              fontSize: 22,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 32, top: 13),
                        child: const Text(
                          'This is the first app \nsign in or create an account',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 82, 78, 78),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 25, right: 25, left: 25),
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints.tight(const Size(500, 49)),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14))),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 26, right: 26, top: 20),
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints.tight(const Size(500, 49)),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const login()));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14)),
                                backgroundColor:
                                    const Color.fromARGB(255, 112, 158, 237)),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      toolbarHeight: 10,
      backgroundColor: const Color.fromARGB(255, 9, 65, 161),
    );
  }
}
