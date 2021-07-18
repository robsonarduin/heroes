import 'package:flutter/material.dart';
import 'package:heroes/model/connections.dart';

class ConnectionsWidget extends StatelessWidget {
  final Connections connections;
  const ConnectionsWidget({required this.connections, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Group Affiliation ${this.connections.groupAffiliation ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Relatives ${this.connections.relatives ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ],
    );
  }
}
