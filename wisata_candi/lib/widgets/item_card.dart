import 'package:flutter/material.dart';
import 'package:wisata_candi/Screens/detail_screen.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    // TODO: 6. Implementasi routing ke DetailScreen
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(candi: candi),
            ),
        );
      },
      child: Card(
        // TODO: 2. Tetapkan parameter shape, margin, dan elevation dari cari
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(4),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // TODO: 3. Buat Image sebagai anak dari Column
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    fit: BoxFit.cover
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              // TODO: 4. Buat Text sebagai anak dari Column
              child: Text(
                candi.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              // TODO: 5. Buat Text sebagai anak dari Column
              child: Text(
                  candi.type,
                  style: TextStyle(
                      fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
