import 'package:flutter/material.dart';
import 'package:random_game/assets/colors.dart';

class WaitingScreen extends StatefulWidget {
  const WaitingScreen({super.key});

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
      setState(() {
        phoneNumber += value;
      });
    }
  }

  // 전화번호 변경 함수
  String formatPhoneNumber(String number) {
    if (number.length <= 4) {
      return number;
    } else {
      return '${number.substring(0, 4)}-${number.substring(4)}';
    }
  }

  Container onEnterPhoneNumber() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
        showDialog(
          context: context,
          barrierDismissible: false, //바깥 영역 터치시 닫을지 여부 결정
          builder: (context) {
            return AlertDialog(
              titlePadding: const EdgeInsets.all(0),
              contentPadding: const EdgeInsets.all(0),
              actionsPadding: const EdgeInsets.all(0),
              actionsOverflowAlignment: OverflowBarAlignment.center,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              title:const Center(
                child:Text("제목", style: TextStyle(fontSize: 20, color: AppColors.n80))
              ),
              content:const Center(
                heightFactor: 1,
                child:Text("내용", style: TextStyle(fontSize: 14, color: AppColors.n60))
              ),
              actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("네", style: TextStyle(fontSize: 20, color: AppColors.n80)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("아니요", style: TextStyle(fontSize: 20, color: AppColors.n80)),
                  ),
                ],
              ),
              ],
            );
          },
        );
      });
    });
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRatVzDGmEFyVULU8VupVmqasEG7Ia7fJxTcw&s',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      child: Container(
                        color: AppColors.n100.withOpacity(0.2),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://bubaum.com/imgs/company/ci.png',
                            width: 100,
                            height: 50,
                          ),
                          const SizedBox(height: 20),
                          const Text('휴대폰 번호를', style: TextStyle(fontSize: 35, color: AppColors.white)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('입력하시면 ', style: TextStyle(fontSize: 35, color: AppColors.white)),
                              Image.network(
                                'https://cdn.imweb.me/thumbnail/20211130/33278f814663e.png',
                                width: 50,
                                height: 50,
                              ),
                              const Text(' 카톡으로', style: TextStyle(fontSize: 35, color: AppColors.white)),
                            ],
                          ),
                          const Text('알려드립니다.', style: TextStyle(fontSize: 35, color: AppColors.white)),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 30,
                      bottom: 30,
                      child: Container(
                          width: 300,
                          height: 300,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.s40,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            heightFactor: 1,
                            widthFactor: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '현재 웨이팅',
                                  style: TextStyle(fontSize: 35, color: AppColors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '10',
                                      style:
                                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: AppColors.white),
                                    ),
                                    Text(
                                      '팀',
                                      style: TextStyle(fontSize: 35, color: AppColors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '예상 시간 ',
                                      style: TextStyle(fontSize: 35, color: AppColors.white),
                                    ),
                                    Text(
                                      '25',
                                      style:
                                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: AppColors.white),
                                    ),
                                    Text(
                                      '분',
                                      style: TextStyle(fontSize: 35, color: AppColors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
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
                          style: const TextStyle(fontSize: 40, color: AppColors.n80),
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors.n20,
                      height: 1,
                      width: double.infinity,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('1');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('1', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                          Container(
                            color: AppColors.n20,
                            height: double.infinity,
                            width: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('2');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('2', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                          Container(
                            color: AppColors.n20,
                            height: double.infinity,
                            width: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('3');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('3', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: AppColors.n20,
                      height: 1,
                      width: double.infinity,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('4');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('4', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                          Container(
                            color: AppColors.n20,
                            height: double.infinity,
                            width: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('5');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('5', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                          Container(
                            color: AppColors.n20,
                            height: double.infinity,
                            width: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('6');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('6', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: AppColors.n20,
                      height: 1,
                      width: double.infinity,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('7');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('7', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                          Container(
                            color: AppColors.n20,
                            height: double.infinity,
                            width: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('8');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('8', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                          Container(
                            color: AppColors.n20,
                            height: double.infinity,
                            width: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('9');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('9', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: AppColors.n20,
                      height: 1,
                      width: double.infinity,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: phoneNumber.isEmpty
                                    ? null
                                    : () {
                                        onChangingPhoneNumber('');
                                      },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('<-', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                          Container(
                            color: AppColors.n20,
                            height: double.infinity,
                            width: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: () {
                                  onChangingPhoneNumber('0');
                                },
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('0', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                          Container(
                            color: AppColors.n20,
                            height: double.infinity,
                            width: 1,
                          ),
                          Expanded(
                            flex: 1,
                            child: TextButton(
                                onPressed: phoneNumber.length > 7 ? onEnterPhoneNumber : null,
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(double.infinity, double.infinity),
                                ),
                                child: const Text('Enter', style: TextStyle(fontSize: 20, color: AppColors.n80))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.4), // 반투명한 배경
              child: const Center(
                child: SizedBox(
                  width: 150, // 원하는 너비
                  height: 150, // 원하는 높이
                  child: CircularProgressIndicator(
                    color: AppColors.y50,
                    strokeWidth: 12,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
