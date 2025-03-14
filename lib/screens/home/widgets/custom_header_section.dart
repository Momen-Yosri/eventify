import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome Back ✨", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w500, )),
          Text("Mo’men Yosri", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 22.sp, fontWeight: FontWeight.bold, )),
          Row(
            children: [
              Icon(Icons.location_on, size: 16.sp, color: Theme.of(context).primaryColor),
              Text(" Cairo, Egypt", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16.sp, )),
              Spacer(),
              Icon(Icons.wb_sunny, color: Theme.of(context).primaryColor),
              SizedBox(width: 10.w),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), 
                  padding: EdgeInsets.all(8.w),
                  backgroundColor: Color(0xffE0FF4F),
                ),
                onPressed: () {},
                child: Text("EN", style: TextStyle(color: Theme.of(context).primaryColor)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
