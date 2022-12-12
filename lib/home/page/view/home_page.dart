import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nubank_clone/products/components/current_invoice_widget.dart';

import '../../../products/components/home_page_list_buttons.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showBalance = true;
  bool iconButton = true;
  IconData iconVisibility = Icons.visibility_off;

  String text = 'R\$ 1,80';

  void changeBalance() {}
  void visiblity() {
    setState(() {
      if (iconButton == true) {
        iconVisibility;
      } else {
        Icons.visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xff830ad1),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
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
                            width: 180,
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  visiblity();
                                });
                              },
                              icon: Icon(
                                iconVisibility,
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
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
                      padding: const EdgeInsets.all(20),
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
                height: 20,
              ),
              CurrentInvoice(),
              Divider(
                height: 50,
                color: Color.fromARGB(255, 216, 216, 216),
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Row(children: [
                  Text(
                    'Acompanhe também',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                ]),
              ),
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(26),
                  child: Container(
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 219, 218, 218)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: TextButton.icon(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            textStyle: MaterialStateProperty.all(TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w500))),
                        label: Text(
                          'Assistente de pagamentos',
                        ),
                        onPressed: () {},
                        icon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.currency_exchange,
                            size: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 50,
                color: Color.fromARGB(255, 216, 216, 216),
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
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
        shrinkWrap: true,
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
