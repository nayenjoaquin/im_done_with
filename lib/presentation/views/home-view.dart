import 'package:flutter/material.dart';
import 'package:im_done_with/components/idw-tile-item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}



class _HomeViewState extends State<HomeView> {
  final items = [
  {
    'title': 'Eating junk food',
    'since': '2024-06-02 10:15:00',
  }
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-item');
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              // header
              const Text(
                "Welcome back Noe! ☀️",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              // list of items
              const Text("I'm done with: ",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  //compare date with now
                  final since = DateTime.parse(items[index]['since']!);

                  return IDWItemTile(
                    title: items[index]['title']!,
                    since: since,
                  );
                },
              ),
            ]
          ),
        ),
      ),
    );
  }
}