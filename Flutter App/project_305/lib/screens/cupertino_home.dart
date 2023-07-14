import 'package:flutter/cupertino.dart';

class CupertinoHome extends StatelessWidget {
  const CupertinoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFF6C48FF),
      navigationBar: const CupertinoNavigationBar(
        middle: Text('(Moocho Logo)'),
        backgroundColor: Color(0xFF6C48FF),
      ),
      child: Container(
        decoration: const ShapeDecoration(
          color: CupertinoColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
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
              child: const CupertinoSearchTextField(
                placeholder: 'Find spots to shop & earn rewards!',
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
                      color: Color(0xFF6C48FF),
                    ),
                    child: Text('Merchant $index'),
                  );
                },
              ),
            )
          ],
        ),
      )
    );
  }
}