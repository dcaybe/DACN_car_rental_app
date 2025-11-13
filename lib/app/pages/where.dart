import 'package:car_fontend/app/widgets/lich.dart';
import 'package:flutter/material.dart';
import 'package:car_fontend/app/constants/colors.dart';
import 'package:car_fontend/app/widgets/button.dart';

class SearchCar extends StatelessWidget {
  const SearchCar({super.key});

  @override
  Widget build(BuildContext context) {
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
                  onPressed: () {},
                  child: const Text(
                    'Xóa hết',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                label: const Text(
                  'Tìm kiếm',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close)),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Màu của bóng
                        spreadRadius: 5, // Độ lan tỏa
                        blurRadius: 7, // Độ mờ
                        offset:
                            const Offset(0, 3), // Vị trí của bóng (ngang, dọc)
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bạn muốn thuê xe ở đâu ?',
                      style: h1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Nhập địa điểm',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Chọn một số tên địa điểm phổ biến',
                      style: h3,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // SỬA 1: Tăng chiều cao để đủ chỗ cho 2 nút
                    SizedBox(
                      height: 90, // Ví dụ: 40 cho mỗi nút + 10 ở giữa
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        children: [
                          // SỬA 2: Mỗi "item" là một CỘT (Column)
                          Column(
                            children: [
                              CustomButton(
                                text: 'Sân bay Tân Sơn Nhất', // Dòng 1, Cột 1
                                color: Colors.white,
                                onPressed: () {},
                              ),
                              const SizedBox(
                                  height: 10), // Khoảng cách giữa 2 dòng
                              CustomButton(
                                text: 'Sân bay Nội Bài', // Dòng 2, Cột 1
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ],
                          ),

                          // Khoảng cách giữa các cột
                          const SizedBox(width: 10),

                          // Item thứ hai (cũng là một cột)
                          Column(
                            children: [
                              CustomButton(
                                text: 'Quận 1', // Dòng 1, Cột 2
                                color: Colors.white,
                                onPressed: () {},
                              ),
                              const SizedBox(height: 10),
                              CustomButton(
                                text: 'Quận 3', // Dòng 2, Cột 2
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ],
                          ),

                          // Thêm khoảng cách
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              CustomButton(
                                text: 'Quận 1', // Dòng 1, Cột 2
                                color: Colors.white,
                                onPressed: () {},
                              ),
                              const SizedBox(height: 10),
                              CustomButton(
                                text: 'Quận 3', // Dòng 2, Cột 2
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              CustomButton(
                                text: 'Quận 1', // Dòng 1, Cột 2
                                color: Colors.white,
                                onPressed: () {},
                              ),
                              const SizedBox(height: 10),
                              CustomButton(
                                text: 'Quận 3', // Dòng 2, Cột 2
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Màu của bóng
                    spreadRadius: 5, // Độ lan tỏa
                    blurRadius: 7, // Độ mờ
                    offset: const Offset(0, 3), // Vị trí của bóng (ngang, dọc)
                  ),
                ]),
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    showCalendarSheet(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Thời gian',
                          style: h2,
                        ),
                        Text(
                          'Chọn ngày',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Màu của bóng
                    spreadRadius: 5, // Độ lan tỏa
                    blurRadius: 7, // Độ mờ
                    offset: const Offset(0, 3), // Vị trí của bóng (ngang, dọc)
                  ),
                ]),
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nhận/Trả xe',
                          style: h2,
                        ),
                        Text(
                          'Chọn giờ',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
