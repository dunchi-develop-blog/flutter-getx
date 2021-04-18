import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Text("Provider"),
          Consumer<CountControllerWithProvider>(
              builder: (_, snapshot, child) {
                return Text("${snapshot.count}");
              }
          ),
          MaterialButton(onPressed: () {
            Provider.of<CountControllerWithProvider>(context, listen: false).increase();
          })],
      ),
    );
  }
}
