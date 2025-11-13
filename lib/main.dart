import 'package:car_fontend/app/constants/colors.dart';
import 'package:car_fontend/app/pages/login/login_profile.dart';
import 'package:flutter/material.dart';

//widgets
import 'package:car_fontend/app/widgets/card_car.dart';
import 'package:car_fontend/app/widgets/button.dart';

//connect supabase_flutter
// import 'package:supabase_flutter/supabase_flutter.dart';

//pages
import 'package:car_fontend/app/pages/profile_page.dart';
import 'package:car_fontend/app/pages/chat_page.dart';
import 'package:car_fontend/app/pages/favorite_page.dart';
import 'package:car_fontend/app/pages/car_page.dart';
import 'package:car_fontend/app/pages/car_info.dart';
import 'package:car_fontend/app/pages/login.dart';
import 'package:car_fontend/app/pages/where.dart  ';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Danh sách các trang chính
  final List<Widget> _pages = const [
    HomePage(), // Trang 1
    FavoritePage(), // Trang 2
    CarPage(), // Trang 3
    ChatPage(), // Trang 4
    LoginProfile(),
    // ProfilePage(), // Trang 5
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pages[_selectedIndex], // 👉 Thay đổi trang tại đây
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 1))),
          child: BottomAppBar(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.home, color: charNormal),
                  onPressed: () => setState(() => _selectedIndex = 0),
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: charNormal),
                  onPressed: () => setState(() => _selectedIndex = 1),
                ),
                IconButton(
                  icon: const Icon(Icons.directions_car, color: charNormal),
                  onPressed: () => setState(() => _selectedIndex = 2),
                ),
                IconButton(
                  icon: const Icon(Icons.chat, color: charNormal),
                  onPressed: () => setState(() => _selectedIndex = 3),
                ),
                IconButton(
                  icon: const Icon(Icons.person, color: charNormal),
                  onPressed: () => setState(() => _selectedIndex = 4),
                ),
              ],
            ),
          ),
        ));
  }
}

// cách trang
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(218, 218, 218, 1),
                      ),
                      backgroundColor: const Color.fromARGB(245, 247, 247, 245),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchCar()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Địa chỉ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Thời gian',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(16)),
                      child: const Icon(
                        Icons.tune,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomButton(
                  icon: Icons.cached,
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomButton(
                  text: 'Loại xe',
                  icon: Icons.airport_shuttle,
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomButton(
                  text: 'Hãng xe',
                  icon: Icons.card_travel,
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomButton(
                  text: 'Động cơ',
                  icon: Icons.tire_repair,
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
            height: 10,
          ),
          Container(
            height: 1,
            color: const Color.fromRGBO(218, 218, 218, 1),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text('Hơn 450 xe có sẵn'),
          ),
          SizedBox(
            height: 450,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CardCar(
                  nameCar: 'Range Rover Suv ',
                  address: 'Hà Nội',
                  distance: 4.0,
                  price: 500000,
                  imageLink: '',
                ),
                SizedBox(
                  width: 10,
                ),
                CardCar(
                  nameCar: 'Range Rover Suv ',
                  address: 'Hà Nội',
                  distance: 4.0,
                  price: 5,
                  imageLink: '',
                ),
                SizedBox(
                  width: 10,
                ),
                CardCar(
                  nameCar: 'Range Rover Suv ',
                  address: 'Hà Nội',
                  distance: 4.0,
                  price: 5,
                  imageLink: '',
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
