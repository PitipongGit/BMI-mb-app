import 'package:bmi2/bmi/bmi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                //เมื่อกดปุ๋มแล้วอยากให้ทำอะไรให้มาทำไว้จุดนี้
                print('กดแล้วนะ ปุ่ม Home ด้านบน');
              },
              icon: const Icon(Icons.home)),
        ],
      ),
      body: BMI(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.orange),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.query_stats,
              color: Colors.cyan,
            ),
            label: 'Stat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer, color: Colors.redAccent),
            label: 'Football',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('คุณปองพล หล่อโฮก'),
            ),
            ListTile(
              title: const Row(children: [
                Text('ดัชนีมวลกาย'),
                Icon(Icons.man),
              ]),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Row(children: [
                Text('ความดันเลือด'),
                Icon(Icons.bloodtype),
              ]),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.share),
      ),
    );
  }
}
