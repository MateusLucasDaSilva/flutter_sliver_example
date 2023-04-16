import 'package:flutter/material.dart';

class WithSliverListPage extends StatelessWidget {
  const WithSliverListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 200,
                  color: Colors.deepOrange,
                ),
                Container(
                  height: 200,
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
