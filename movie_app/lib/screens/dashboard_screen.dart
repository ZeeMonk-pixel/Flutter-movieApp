import 'package:flutter/material.dart';
import 'package:movie_app/widget/horizontal_list.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies App'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recommended',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('View All'),
                  )
                ],
              ),
            ),
            Container(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HorizontalList(),
                  HorizontalList(),
                  HorizontalList(),
                  HorizontalList(),
                  HorizontalList(),
                  HorizontalList(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Best of 2019',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('View All'),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Card(
                        elevation: 5,
                        child: Row(
                          children: [
                            Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      topLeft: Radius.circular(5)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1624555130581-1d9cca783bc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80'))),
                            ),
                            Container(
                              height: 150,
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Spider-man',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: 204,
                                    child: Text(
                                          'this movie is a spidr man movie, if you know, you know that this movie is one hell of a badass movie. fight anybody, kill anybody, Koselegbe Spider man')
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
