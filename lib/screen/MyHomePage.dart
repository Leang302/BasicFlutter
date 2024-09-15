import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screen/movie_detail_screen.dart';

//grid view
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final img = [
    "https://m.media-amazon.com/images/I/71lADxngTWS._AC_SL1050_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQah7rvAdEmDnkxXIIQ0KqbE0gjKPQvnL77xQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO8hOou-MjWJQTrPor8Ht8doeSTT_ppjtANg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYxnnMqQyMqz_sWOc-HIaB8QJu9ZeGd0ijnA&s",
    "https://artofthemovies.co.uk/cdn/shop/files/IMG_4154_1-780453_de0cc110-550d-4448-a7ec-d3ff945c0739.jpg?v=1696169470",
    "https://m.media-amazon.com/images/I/71lADxngTWS._AC_SL1050_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQah7rvAdEmDnkxXIIQ0KqbE0gjKPQvnL77xQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO8hOou-MjWJQTrPor8Ht8doeSTT_ppjtANg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYxnnMqQyMqz_sWOc-HIaB8QJu9ZeGd0ijnA&s",
    "https://artofthemovies.co.uk/cdn/shop/files/IMG_4154_1-780453_de0cc110-550d-4448-a7ec-d3ff945c0739.jpg?v=1696169470",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(
          Icons.search,
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "GridView Example",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Icon(
                Icons.person,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: img.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 2
                      : 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetail(),
                    ));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  child: Image.network(
                    img[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
