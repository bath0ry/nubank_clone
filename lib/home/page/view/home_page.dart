import 'package:flutter/material.dart';

import '../../../products/components/widgets_home_page_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomePageBarWidgets(),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: (() {}),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      'Conta',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right))
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'R\$ 1,83',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
