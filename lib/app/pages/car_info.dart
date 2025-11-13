import 'package:car_fontend/app/constants/colors.dart';
import 'package:car_fontend/app/pages/info_trip.dart';
import 'package:car_fontend/app/widgets/button.dart';
import 'package:car_fontend/app/widgets/list_title.dart';
import 'package:flutter/material.dart';

class CarInfo extends StatelessWidget {
  const CarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.grey[700],
        );

    final boldTextStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
        );

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(width: 1, color: Colors.grey))),
        height: MediaQuery.of(context).size.width * 0.16,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return const InfoTrip();
                        });
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '500.000đ / ngày',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Text(
                        '13 - 22 tháng 11 ,2025',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  )),
              // ElevatedButton.icon(
              //   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              //   onPressed: () {},
              //   label: const Text(
              //     'Tìm kiếm',
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   icon: const Icon(
              //     Icons.search,
              //     color: Colors.white,
              //   ),
              // )
              CustomButton(
                onPressed: () {},
                borderRadius: 12,
                color: Colors.blue,
                text: 'Đặt xe',
                width: MediaQuery.of(context).size.width * 0.35,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://images.pexels.com/photos/116675/pexels-photo-116675.jpeg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tên xe',
                    style: h1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Đia chỉ',
                    style: h2,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: [
                      Text('5 chỗ', style: textStyle),
                      Text('• Số tự động ', style: textStyle),
                      Text('• Động cơ xăng', style: textStyle),
                      Text('• 7L/100km', style: textStyle),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.black, size: 18),
                          const SizedBox(width: 4),
                          Text('Mới', style: boldTextStyle),
                          const SizedBox(width: 16),
                        ],
                      ),

                      // Hàng đánh giá
                      Row(
                        children: [
                          Icon(Icons.chat_bubble_outline,
                              color: Colors.grey[700], size: 18),
                          const SizedBox(width: 4),
                          Text('0 đánh giá', style: textStyle),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(),
                  const ListTitle(
                    iconLeading: Icons.sailing,
                    title: 'Giảm 10%',
                  ),
                  const ListTitle(
                    iconLeading: Icons.security,
                    title: '100% chuyến đi đều có bảo hiểm',
                  ),
                  const ListTitle(
                    iconLeading: Icons.card_travel,
                    title: 'Giấy tờ thuê xe%',
                  ),
                  const ListTitle(
                    iconLeading: Icons.sailing,
                    title: 'Thế chấp khi nhận xe',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Tiện ích trên xe'),
                  const SizedBox(
                    height: 10,
                  ),
                  const ListTitle(
                    iconLeading: Icons.security,
                    title: 'Túi khí an toàn',
                  ),
                  const ListTitle(
                    iconLeading: Icons.security,
                    title: 'Lốp xe dự phòng',
                  ),
                  const ListTitle(
                    iconLeading: Icons.security,
                    title: 'Khe cắm usb',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Vị trí xe',
                    style: h2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Những điều cần biết'),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Quy định',
                    style: h2,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Vì xe bạn thuê là xe của người khác nên hãy cẩn thận và tôn trọng khi sử dụng xe nhé.',
                    style: h3,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Kinh nghệm thuê xe',
                    style: h2,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Đọc kĩ những thông tin quan trọng để có một chuyến đi trọn vẹn.',
                    style: h3,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
