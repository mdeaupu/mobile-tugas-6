import 'package:flutter/material.dart';
import 'package:tugas6/widgets/list.dart';
import 'package:tugas6/widgets/grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ListView dan GridView'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'ListView'),
              Tab(icon: Icon(Icons.grid_on), text: 'GridView'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            //ini penempatan widget
            TampilanList(),
            TampilanGrid(),
          ],
        ),
      ),
    );
  }
}
