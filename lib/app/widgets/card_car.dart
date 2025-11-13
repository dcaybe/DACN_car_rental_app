import 'package:car_fontend/app/constants/colors.dart';
import 'package:car_fontend/app/pages/car_info.dart';
import 'package:flutter/material.dart';

class CardCar extends StatelessWidget {
  final String nameCar;
  final String address;
  final double distance;
  final double price;
  final String imageLink;
  const CardCar(
      {super.key,
      required this.nameCar,
      required this.address,
      required this.distance,
      required this.price,
      required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          overlayColor: Colors.white),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CarInfo(),
            ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            // Đảm bảo borderRadius này GIỐNG HỆT của ElevatedButton
            borderRadius: BorderRadius.circular(12.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 300,
              child: Image.network(
                'https://images.pexels.com/photos/116675/pexels-photo-116675.jpeg',
                fit: BoxFit
                    .cover, // Thêm fit: BoxFit.cover để ảnh lấp đầy đẹp hơn
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameCar,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                address,
                style: const TextStyle(color: charNormal),
              ),
              Text(
                'Cách ${distance}Km',
                style: const TextStyle(color: charNormal),
              ),
              Text('$priceđ/Ngày', style: const TextStyle(color: Colors.black))
            ],
          ),
        ],
      ),
    );
  }
}
