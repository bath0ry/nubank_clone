import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nubank_clone/data/view_balance.dart';

class HomePageBarWidgets extends StatelessWidget {
  const HomePageBarWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff830ad1),
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
                  width: 300,
                ),
                BlocBuilder(builder: (context, state) {
                  return IconButton(
                      onPressed: () {
                        context.read<ViewCubit>().switchIcon();
                      },
                      icon: Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ));
                }),
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
    );
  }
}
