import 'package:car_fontend/app/constants/colors.dart';
import 'package:car_fontend/app/widgets/button.dart';
import 'package:car_fontend/app/widgets/row_text_02.dart';
import 'package:flutter/material.dart';

class InfoTrip extends StatelessWidget {
  const InfoTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero, // 2. Xóa kích thước tối thiểu
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Chi tiết giá',
                style: h1,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Bạn vẫn chưa bị trừ tiền',
                style: h3,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '13 - 22 tháng 11, 2025',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  Text('7.928.500đ')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const RowText02(
                textStart: 'Phí bảo hiểm',
                textEnd: '792.850',
                textStyleStart: TextStyle(decoration: TextDecoration.underline),
              ),
              const SizedBox(
                height: 10,
              ),
              const RowText02(
                textStart: 'Phí giao nhận xe',
                textEnd: '108.956',
                textStyleStart: TextStyle(decoration: TextDecoration.underline),
              ),
              const SizedBox(
                height: 10,
              ),
              const RowText02(
                textStart: 'Tổng sau thuế',
                textEnd: '8.830.306',
                textStyleStart: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mã khuyến mãi'),
                  Icon(Icons.rocket_launch),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          onPressed: () {},
                          text: 'Đặt xe',
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
