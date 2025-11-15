import 'package:flutter/material.dart';
import 'package:tugas6/models/wisata.dart';
import 'package:tugas6/screens/detail.dart';

class TampilanList extends StatelessWidget {
  const TampilanList({super.key});

  @override
  Widget build(BuildContext context) {
    var wisata = Wisata();
    return Scaffold(
      body: ListView.builder(
        itemCount: wisata.data.length,
        itemBuilder: (context, index) {
          var item = wisata.data[index];
          return Card(
            color: Colors.deepPurpleAccent,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  item['gambar']!,
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
              title: Text(
                item['nama']!,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                item['lokasi']!,
                style: TextStyle(color: Colors.white70),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 16,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWisata(wisata: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
