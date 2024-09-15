import 'package:flutter/material.dart';
import 'package:movie_app/screen/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}


//list view
// class MyHomePage extends StatelessWidget {
//   MyHomePage({super.key});
//   final img = [
//     "https://m.media-amazon.com/images/I/71lADxngTWS._AC_SL1050_.jpg",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQah7rvAdEmDnkxXIIQ0KqbE0gjKPQvnL77xQ&s",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO8hOou-MjWJQTrPor8Ht8doeSTT_ppjtANg&s",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYxnnMqQyMqz_sWOc-HIaB8QJu9ZeGd0ijnA&s",
//     "https://artofthemovies.co.uk/cdn/shop/files/IMG_4154_1-780453_de0cc110-550d-4448-a7ec-d3ff945c0739.jpg?v=1696169470"
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "The Movies".toUpperCase(),
//           style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(right: 10),
//             child: CircleAvatar(
//               child: Icon(Icons.person),
//             ),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(12),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               //title
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Recommend For you",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                   Text("Show all", style: TextStyle(fontSize: 18)),
//                 ],
//               )
//               //body
//               ,
//               SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: 220,
//                 width: double.infinity,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: img.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: EdgeInsets.all(8),
//                       child: Container(
//                         height: 220,
//                         width: 150,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.red,
//                             image: DecorationImage(
//                                 image: NetworkImage(img[index]),
//                                 fit: BoxFit.cover)),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               //title
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Recommend For you",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                   Text("Show all", style: TextStyle(fontSize: 18)),
//                 ],
//               )
//               //body
//               ,
//               SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: 220,
//                 width: double.infinity,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: img.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: EdgeInsets.all(8),
//                       child: Container(
//                         height: 220,
//                         width: 150,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.red,
//                             image: DecorationImage(
//                                 image: NetworkImage(img[index]),
//                                 fit: BoxFit.cover)),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               //title
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Recommend For you",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                   Text("Show all", style: TextStyle(fontSize: 18)),
//                 ],
//               )
//               //body
//               ,
//               SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: 220,
//                 width: double.infinity,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: img.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: EdgeInsets.all(8),
//                       child: Container(
//                         height: 220,
//                         width: 150,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.red,
//                             image: DecorationImage(
//                                 image: NetworkImage(img[index]),
//                                 fit: BoxFit.cover)),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               //title
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Recommend For you",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                   Text("Show all", style: TextStyle(fontSize: 18)),
//                 ],
//               )
//               //body
//               ,
//               SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: 220,
//                 width: double.infinity,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: img.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: EdgeInsets.all(8),
//                       child: Container(
//                         height: 220,
//                         width: 150,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.red,
//                             image: DecorationImage(
//                                 image: NetworkImage(img[index]),
//                                 fit: BoxFit.cover)),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
