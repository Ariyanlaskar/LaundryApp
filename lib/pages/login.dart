// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:my_first_app/pages/deskpage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _uname = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  bool _validate = false;
  bool _pvalidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 10,
          backgroundColor: const Color.fromARGB(255, 9, 65, 161),
        ),
        body: Container(
          height: 700,
          width: 430,
          color: const Color.fromARGB(255, 220, 223, 228),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 40, top: 150),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 26, 88, 196)),
                ),
              ),
              const SizedBox(
                  // height: 0,
                  ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    padding: const EdgeInsets.only(left: 27, right: 27),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      controller: _uname,
                      decoration: InputDecoration(
                          hintText: 'Enter Your Username Or Password',
                          errorText: _validate ? "Value can't be empty" : null),
                      cursorHeight: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    padding: const EdgeInsets.only(left: 27, right: 27),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      controller: _pass,
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          errorText:
                              _pvalidate ? "value can't be empty" : null),
                      cursorHeight: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(height: 45, width: 120),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          String textSend = _uname.text;
                          (_uname.text.isEmpty)
                              ? _validate = true
                              : _validate = false;
                          (_pass.text.isEmpty)
                              ? _pvalidate = true
                              : _pvalidate = false;
                          if (_validate == false && _pvalidate == false) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      deskpage(text: textSend),
                                ));
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
