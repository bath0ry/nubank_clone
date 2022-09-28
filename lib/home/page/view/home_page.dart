import 'package:flutter/material.dart';

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
            Container(
              color: Color(0xff830ad1),
              width: 420,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person_outline,
                            size: 30,
                            color: Colors.white,
                          ),
                          alignment: Alignment.topLeft,
                        ),
                        SizedBox(
                          width: 185,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.help_outline,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_add_alt,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Olá, Paulo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ),
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
            )
          ],
        ),
      ),
    );
  }
}
