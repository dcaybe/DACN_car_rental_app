import 'package:car_fontend/app/constants/colors.dart';
import 'package:car_fontend/app/widgets/list_title.dart';
import 'package:flutter/material.dart';

class LoginProfile extends StatelessWidget {
  const LoginProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hồ sơ',
              style: h1,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: const Center(
                    child: Text(
                      'D',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  children: [Text('Đoàn Hùng')],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Thêm màu nền để thấy bóng rõ hơn
                borderRadius: BorderRadius.circular(
                    12), // <-- Chuyển borderRadius vào đây
                boxShadow: [
                  // <-- boxShadow được đặt ở đây
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Màu của bóng
                    spreadRadius: 5, // Độ lan tỏa
                    blurRadius: 7, // Độ mờ
                    offset: const Offset(0, 3), // Vị trí của bóng (ngang, dọc)
                  ),
                ],
              ),
              padding: const EdgeInsets.only(
                  top: 30, right: 20, bottom: 30, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bắt đầu thuê xe trên \n ...',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Thêm xe và bắt đầu kiếm tiền \n thật đơn giản',
                        style: TextStyle(color: charNormal),
                      )
                    ],
                  ),
                  SizedBox(
                      height: 80,
                      child: Image.network(
                          'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg'))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // setup
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cài đặt tài khoản',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTitle(
                  iconLeading: Icons.key,
                  title: 'Thông tin cá nhân',
                ),
                Divider(),
                ListTitle(
                  iconLeading: Icons.account_box,
                  title: 'Tích lũy hoạt động',
                ),
                Divider(),
                ListTitle(
                  iconLeading: Icons.call,
                  title: 'Thanh toán & chi trả ',
                ),
                Divider(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // car'
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dành cho chủ xe',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTitle(
                  iconLeading: Icons.key,
                  title: 'Đăng xe cho thuê tự lái',
                ),
                Divider(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trung tâm hỗ trợ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTitle(
                  iconLeading: Icons.key,
                  title: 'Dành cho khách thuê',
                ),
                Divider(),
                ListTitle(
                  iconLeading: Icons.account_box,
                  title: 'Dành cho chủ xe',
                ),
                Divider(),
                ListTitle(
                  iconLeading: Icons.call,
                  title: 'Gọi cho chúng tôi ',
                ),
                Divider(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //infomation center
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trung tâm thông tin',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTitle(
                  iconLeading: Icons.key,
                  title: 'Giới thiệu',
                ),
                Divider(),
                ListTitle(
                  iconLeading: Icons.account_box,
                  title: 'Pháp lí',
                ),
                Divider(),
                ListTitle(
                  iconLeading: Icons.call,
                  title: 'Hợp tác ',
                ),
                Divider(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Đăng xuất',
                          style: TextStyle(color: Colors.black),
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
