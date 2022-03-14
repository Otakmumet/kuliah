import 'package:belajar/model/tourism_place.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(place.imageAsset),
            Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Lobster',
                  ),
                )
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text( place.deskripsi,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ), // Text
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical:16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget> [
                      Icon(Icons.calendar_today),
                      Text('open everyday'),
                    ],
                  ),

                  Column(
                    children: <Widget> [
                      Icon(Icons.access_time),
                      Text(place.jam),
                    ],
                  ),

                  Column(
                    children: <Widget> [
                      Icon(Icons.attach_money),
                      Text(place.harga),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg' ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/pantai1.jpg'),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/pantai2.jpg'),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/pantai3.jpg'),
                    ),

                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}

