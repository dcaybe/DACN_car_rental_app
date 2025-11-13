import 'package:flutter/material.dart';
import 'package:car_fontend/app/widgets/button.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Chuyến đi của tôi',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomButton(
                  text: 'Tất cả',
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomButton(
                  text: 'Chờ xác nhận',
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomButton(
                  text: 'Sắp khởi hành',
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomButton(
                  text: 'Trong chuyến đi',
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomButton(
                  text: 'Hoàn thành',
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Chưa có chuyến đi nào được cài đặt...',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
              'Đã đến lúc lên kế hoạch cho chuyến đi thật thú vị\nrồi. Chọn ngay một chiếc xe nhé! '),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () {},
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                  child: Text(
                    'Bắt đầu tìm kiếm',
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
