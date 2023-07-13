import 'package:flutter/material.dart';

class MaterialHome extends StatelessWidget {
  const MaterialHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C48FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF6C48FF),
        title: Text('(Moocho Logo)'),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          )
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80, bottom: 80),
              child: const Text(
                'Carousel Coming Soon!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: 'Find spots to shop & earn rewards!',
                  suffixIcon: Icon(Icons.search),
                )
              )
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                padding: const EdgeInsets.all(15),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.0,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    // tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Text('Merchant $index'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}