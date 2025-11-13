import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// Bạn có thể gọi hàm này từ một nút bấm để hiển thị BottomSheet
void showCalendarSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Cho phép sheet chiếm nhiều hơn 50%
    backgroundColor:
        Colors.transparent, // Nền trong suốt để container con bo góc
    builder: (context) {
      // Dùng FractionallySizedBox để sheet chiếm 85% chiều cao
      return const FractionallySizedBox(
        heightFactor: 0.85,
        child: CustomDatePicker(),
      );
    },
  );
}

// WIDGET LỊCH CHÍNH
class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  // Biến để quản lý trạng thái của lịch
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Widget cho phần chân (footer)
  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Nút "Đặt lại"
        TextButton(
          onPressed: () {
            setState(() {
              _selectedDay = DateTime.now();
              _focusedDay = DateTime.now();
            });
          },
          child: const Text(
            'Đặt lại',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        // Nút "Tiếp theo"
        ElevatedButton(
          onPressed: () {
            // Trả ngày đã chọn về và đóng sheet
            Navigator.pop(context, _selectedDay);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // Bo tròn
            ),
          ),
          child: const Text('Tiếp theo', style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Container chính với nền trắng và bo góc trên
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Giúp Column co lại
        children: [
          // 1. Tiêu đề
          const Text(
            'Chuyến đi của bạn diễn ra khi nào?',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // 2. Widget LỊCH
          Expanded(
            child: TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              calendarFormat: CalendarFormat.month, // Luôn hiển thị dạng tháng

              // --- Quản lý trạng thái ---
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // Cập nhật ngày đang focus
                });
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },

              // --- TÙY CHỈNH GIAO DIỆN (Styling) ---

              // 1. Tùy chỉnh Header (Tháng 11/2025)
              headerStyle: const HeaderStyle(
                formatButtonVisible: false, // Ẩn nút "2 weeks"
                titleCentered: true,
                // Định dạng tiêu đề tháng

                titleTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // 2. Tùy chỉnh hàng T2, T3... (Days of Week)
              daysOfWeekStyle: const DaysOfWeekStyle(
                // Điều chỉnh style cho các ngày trong tuần
                weekdayStyle:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                weekendStyle:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),

              // 3. Tùy chỉnh các ô ngày (Calendar)
              calendarStyle: CalendarStyle(
                // Style cho ngày được chọn (số 13)
                selectedDecoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.5),
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: const TextStyle(color: Colors.black),

                // Style cho ngày hôm nay
                todayDecoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                todayTextStyle: const TextStyle(color: Colors.black),

                // Style cho các ngày mờ (tháng trước/sau)
                outsideTextStyle: TextStyle(color: Colors.grey[400]!),

                // Style cho ngày cuối tuần (T7, CN)
                weekendTextStyle: const TextStyle(color: Colors.black),
              ),
            ),
          ),

          const Divider(height: 1),
          const SizedBox(height: 10),

          // 3. Phần chân (Footer)
          _buildFooter(),
        ],
      ),
    );
  }
}
