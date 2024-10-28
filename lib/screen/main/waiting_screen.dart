import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WaitingScreen extends StatefulWidget {
  const WaitingScreen({Key? key}) : super(key: key);

  @override
  State createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {
  String phoneNumber = '';
  bool isLoading = false;
  void onChangingPhoneNumber(String value) {
    if (value == '' && phoneNumber.isNotEmpty) {
      setState(() {
        phoneNumber = phoneNumber.substring(0, phoneNumber.length - 1);
      });
      return;
    } else if (phoneNumber.length < 8) {
      print('value: $value ${value.length}');
      setState(() {
        phoneNumber += value;
      });
    }
  }

  String formatPhoneNumber(String number) {
    if (number.length <= 4) {
      return number;
    } else {
      return '${number.substring(0, 4)}-${number.substring(4)}';
    }
  }

  void onEnterPhoneNumber() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRatVzDGmEFyVULU8VupVmqasEG7Ia7fJxTcw&s',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      '010-${formatPhoneNumber(phoneNumber)}',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('1');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('1')),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('2');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('2')),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('3');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('3')),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('4');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('4')),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('5');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('5')),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('6');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('6')),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('7');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('7')),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('8');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('8')),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('9');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('9')),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('<-')),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {
                              onChangingPhoneNumber('0');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('0')),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, double.infinity),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(00),
                              ),
                            ),
                            child: const Text('Enter')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
