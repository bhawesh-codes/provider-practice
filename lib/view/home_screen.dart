import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/viewmodel/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 180,
              width: 180,
              color: context.watch<HomeViewmodel>().color,
              child: Center(
                child: Text(
                  context.watch<HomeViewmodel>().count,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<HomeViewmodel>().changeColor();
                context.read<HomeViewmodel>().changeCount();
              },
              child: Text('Change Color'),
            ),
          ],
        ),
      ),
    );
  }
}
