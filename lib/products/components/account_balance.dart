import 'package:flutter/material.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'R\$ 1,83',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }
}
