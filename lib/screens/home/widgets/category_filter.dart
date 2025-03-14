import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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