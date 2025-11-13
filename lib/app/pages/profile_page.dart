import 'package:flutter/material.dart';
import 'package:car_fontend/app/constants/colors.dart';
import 'package:car_fontend/app/widgets/list_title.dart';
import 'package:car_fontend/app/pages/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(), // tạo hiệu ứng cuộn
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40.0, bottom: 30.0),
              child: Text(
                'Hồ sơ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                'Đăng nhập để bắt đầu kế hoạch di chuyển tiếp theo của bạn.',
                style: TextStyle(color: charNormal),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(double.infinity, 60),
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return const Login();
                            });
                      },
                      child: const Text(
                        'Đăng nhâp',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Bạn chưa có tài khoản? Đăng kí'),
            const SizedBox(height: 20),
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
            )
          ],
        ),
      ),
    );
  }
}
