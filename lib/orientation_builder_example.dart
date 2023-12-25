import 'package:flutter/material.dart';

class OrientationBuilderExample extends StatelessWidget {
  const OrientationBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Orientation Builder Example'),
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            int crossAxisCount = orientation == Orientation.portrait ? 3 : 6;

            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(8),
                  child: Center(
                    child: Text('Item $index'),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
