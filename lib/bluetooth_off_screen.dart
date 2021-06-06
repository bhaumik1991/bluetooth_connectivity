import 'package:flutter/material.dart';
import 'package:flutter_blue/gen/flutterblue.pb.dart';

class BluetoothOffScreen extends StatelessWidget {
  const BluetoothOffScreen({Key? key, this.state}) : super(key: key);

  final BluetoothState? state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.bluetooth_disabled,
              size: 100.0,
              color: Colors.blue,
            ),
            Text(
              'Bluetooth is ${state != null ? state.toString().substring(15) : 'not available'}. Turn On Bluetooth',
              style: Theme.of(context)
                  .primaryTextTheme.bodyText1
                  ?.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
