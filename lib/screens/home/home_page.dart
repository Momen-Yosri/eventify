import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            HeaderSection(),
            CategoryFilters(),
            Expanded(child: EventList()),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome Back ✨", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          Text("Mo’men Yosri", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Icon(Icons.location_on, size: 16),
              Text(" Cairo, Egypt", style: TextStyle(fontSize: 16)),
              Spacer(),
              Icon(Icons.wb_sunny),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(8)),
                onPressed: () {},
                child: Text("EN"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
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
      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
      onPressed: () {},
      child: Text(label),
    );
  }
}

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
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
      margin: EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.yellow)),
            Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: "Map"),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle, size: 40), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Love"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
