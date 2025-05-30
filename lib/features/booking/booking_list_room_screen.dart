import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../common/widgets/booking_room_card.dart';
import '../../common/widgets/read_only_date_time_display.dart';
import '../../common/widgets/heading.dart';
import '../../features/booking/model/booking_room_result.dart';

class BookingListRoomScreen extends StatelessWidget {
  final List<BookingRoomResult> rooms;

  const BookingListRoomScreen({super.key, required this.rooms});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, -5),
              child: Stack(
                children: [
                  const Heading(title: 'ĐẶT PHÒNG'),
                  Positioned(
                    left: 20,
                    top: 22,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
            ),
            if (rooms.isNotEmpty)
              Transform.translate(
                offset: const Offset(0, 0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      ReadOnlyDateTimeDisplay(
                        label: 'Nhận phòng',
                        time: DateFormat('HH:mm').format(
                          DateFormat('HH:mm dd/MM/yyyy')
                              .parse(rooms[0].checkIn),
                        ),
                        date: DateFormat('dd/MM/yyyy').format(
                          DateFormat('HH:mm dd/MM/yyyy')
                              .parse(rooms[0].checkIn),
                        ),
                      ),
                      const SizedBox(height: 6),
                      ReadOnlyDateTimeDisplay(
                        label: 'Trả phòng',
                        time: DateFormat('HH:mm').format(
                          DateFormat('HH:mm dd/MM/yyyy')
                              .parse(rooms[0].checkOut),
                        ),
                        date: DateFormat('dd/MM/yyyy').format(
                          DateFormat('HH:mm dd/MM/yyyy')
                              .parse(rooms[0].checkOut),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            Expanded(
              child: ListView.builder(
                itemCount: rooms.length,
                itemBuilder: (context, index) {
                  return BookingRoomCard(room: rooms[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String formatDateTime(String original) {
  final inputFormat = DateFormat("HH:mm dd/MM/yyyy");
  final dateTime = inputFormat.parse(original);

  final outputFormat = DateFormat("yyyy-MM-ddTHH:mm:ss");
  return outputFormat.format(dateTime);
}
