import 'package:eventify/screens/home/widgets/custom_header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/bottom_navbar.dart';



class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(color: Color(0xffE0FF4F),
              child: Column(
                children: [
                  CustomHeaderSection(),
              CategoryFilters(),
                ],
              ),
            ),
            Expanded(child: EventList()),
          ],
        ),
      ),
    );
  }
}


class CategoryFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilterButton(label: "All"),
          FilterButton(label: "Sport"),
          FilterButton(label: "Birthday"),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  FilterButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        backgroundColor: Color(0xffE0FF4F),
      ),
      onPressed: () {},
      child: Text(label, style: TextStyle(color: Color(0xff00272B))),
    );
  }
}

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.w),
      children: [
        EventCard(title: "Birthday", date: "21 Nov", description: "This is a Birthday Party"),
        EventCard(title: "Meeting", date: "22 Nov", description: "Meeting for Updating The Development Method"),
        EventCard(title: "Exhibition", date: "22 Nov", description: "Art and Culture Exhibition"),
      ],
    );
  }
}

class EventCard extends StatelessWidget {
  final String title, date, description;
  EventCard({required this.title, required this.date, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff00272B),
      margin: EdgeInsets.only(bottom: 16.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date, style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: Color(0xffE0FF4F))),
            Text(title, style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, color: Color(0xffE0FF4F))),
            SizedBox(height: 5.h),
            Text(description, style: TextStyle(fontSize: 16.sp, color: Color(0xffE0FF4F))),
          ],
        ),
      ),
    );
  }
}

