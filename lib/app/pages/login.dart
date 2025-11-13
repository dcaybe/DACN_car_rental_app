import 'package:car_fontend/app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:car_fontend/app/constants/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Center(
                        child: Text('Đăng nhập hoặc đăng kí'),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              overlayColor: const Color.fromARGB(255, 2, 0, 0),
                              shadowColor: Colors.transparent,
                            ),
                            child: const Icon(Icons.close)),
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Chào mừng bạn đến với ...',
                    style: h1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Số điện thoại',
                        hintText: 'Nhập số điện thoại của bạn',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'Chứng tôi sẽ nhắn tin cho bạn để xác nhận số điện thoại này. Có áp dụng phí dữ liệu và phí tin nhắn tiêu chuẩn.'),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomButton(
                        onPressed: () {},
                        color: Colors.blue,
                        height: 40,
                        text: 'Tiếp tục',
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'hoặc',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              fixedSize: const Size(double.infinity, 40),
                            ),
                            onPressed: () {},
                            child: const Expanded(
                                child: Text(
                              'Đăng nhập với google',
                              style: TextStyle(color: Colors.white),
                            ))),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
