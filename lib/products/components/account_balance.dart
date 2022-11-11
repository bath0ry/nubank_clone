import 'package:flutter/material.dart';
import 'package:nubank_clone/data/balance_text_cubit.dart';
import 'package:nubank_clone/products/components/text.dart';

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
            text,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
