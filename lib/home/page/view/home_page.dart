import 'package:flutter/material.dart';
import 'package:nubank_clone/products/components/account_balance.dart';
import 'package:nubank_clone/products/components/current_invoice_widget.dart';

import '../../../products/components/home_page_list_buttons.dart';
import '../../../products/components/widgets_home_page_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.chevron_right))
                  ],
                ),
              ),
              AccountBalance(),
              SizedBox(
                height: 40,
              ),
              _actionButtonList(),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(26),
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 219, 218, 218)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 140),
                          child: TextButton.icon(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                textStyle: MaterialStateProperty.all(TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500))),
                            label: Text(
                              'Meus cartões',
                            ),
                            onPressed: () {},
                            icon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.credit_card,
                                size: 23,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 50,
                color: Color.fromARGB(255, 216, 216, 216),
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Row(children: [
                    Text(
                      'Cartão de crédito',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_right,
                        )),
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Row(
                  children: [
                    Text('Fatura atual',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 145, 144, 144))),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CurrentInvoice(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _actionButtonList() {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          HomePageListButtons(
            backgroundColorButton:
                MaterialStateProperty.all(Color.fromARGB(255, 222, 221, 221)),
            paddingButton: MaterialStateProperty.all(EdgeInsets.all(22)),
            shapeButton: MaterialStateProperty.all(CircleBorder()),
            iconButton: Icon(
              Icons.pix_outlined,
              color: Colors.black,
            ),
            textButton: 'Área Pix',
            paddingText: EdgeInsets.all(12),
          ),
          HomePageListButtons(
            backgroundColorButton:
                MaterialStateProperty.all(Color.fromARGB(255, 222, 221, 221)),
            paddingButton: MaterialStateProperty.all(EdgeInsets.all(22)),
            shapeButton: MaterialStateProperty.all(CircleBorder()),
            iconButton: Icon(
              Icons.payment,
              color: Colors.black,
            ),
            textButton: 'Pagar',
            paddingText: EdgeInsets.all(12),
          ),
          HomePageListButtons(
              backgroundColorButton:
                  MaterialStateProperty.all(Color.fromARGB(255, 222, 221, 221)),
              paddingButton: MaterialStateProperty.all(EdgeInsets.all(22)),
              shapeButton: MaterialStateProperty.all(CircleBorder()),
              iconButton: Icon(
                Icons.attach_money,
                color: Colors.black,
              ),
              textButton: 'Transferir',
              paddingText: EdgeInsets.all(12)),
          HomePageListButtons(
              backgroundColorButton:
                  MaterialStateProperty.all(Color.fromARGB(255, 222, 221, 221)),
              paddingButton: MaterialStateProperty.all(EdgeInsets.all(22)),
              shapeButton: MaterialStateProperty.all(CircleBorder()),
              iconButton: Icon(
                Icons.savings,
                color: Colors.black,
              ),
              textButton: 'Depositar',
              paddingText: EdgeInsets.all(12)),
          HomePageListButtons(
              backgroundColorButton:
                  MaterialStateProperty.all(Color.fromARGB(255, 222, 221, 221)),
              paddingButton: MaterialStateProperty.all(EdgeInsets.all(22)),
              shapeButton: MaterialStateProperty.all(CircleBorder()),
              iconButton: Icon(
                Icons.phone_android,
                color: Colors.black,
              ),
              textButton: 'Recarga de \nCelular',
              paddingText: EdgeInsets.all(5)),
          HomePageListButtons(
              backgroundColorButton:
                  MaterialStateProperty.all(Color.fromARGB(255, 222, 221, 221)),
              paddingButton: MaterialStateProperty.all(EdgeInsets.all(22)),
              shapeButton: MaterialStateProperty.all(CircleBorder()),
              iconButton: Icon(
                Icons.request_quote,
                color: Colors.black,
              ),
              textButton: 'Cobrar',
              paddingText: EdgeInsets.all(12)),
          HomePageListButtons(
              backgroundColorButton:
                  MaterialStateProperty.all(Color.fromARGB(255, 222, 221, 221)),
              paddingButton: MaterialStateProperty.all(EdgeInsets.all(22)),
              shapeButton: MaterialStateProperty.all(CircleBorder()),
              iconButton: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              textButton: 'Doação',
              paddingText: EdgeInsets.all(12)),
          HomePageListButtons(
              backgroundColorButton:
                  MaterialStateProperty.all(Color.fromARGB(255, 222, 221, 221)),
              paddingButton: MaterialStateProperty.all(EdgeInsets.all(22)),
              shapeButton: MaterialStateProperty.all(CircleBorder()),
              iconButton: Icon(
                Icons.language,
                color: Colors.black,
              ),
              textButton: 'Transferir \nInternac.',
              paddingText: EdgeInsets.all(5)),
          HomePageListButtons(
              backgroundColorButton:
                  MaterialStateProperty.all(Color.fromARGB(255, 222, 221, 221)),
              paddingButton: MaterialStateProperty.all(EdgeInsets.all(22)),
              shapeButton: MaterialStateProperty.all(CircleBorder()),
              iconButton: Icon(
                Icons.signal_cellular_alt,
                color: Colors.black,
              ),
              textButton: 'Investir',
              paddingText: EdgeInsets.all(12)),
        ],
      ),
    );
  }
}
