import 'package:babloziki/src/babloziki/db/entity/catalog.dart';
import 'package:babloziki/src/babloziki/model/pay_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Платежи',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ListView.builder(
            itemCount: context.watch<PayModel>()?.countPays ?? 0,
            itemBuilder: (context, index) => _payItem(context.watch<PayModel>(), index)));
  }
}

Widget _payItem(PayModel payModel, int index) {
  final Pay pay = payModel.pays[index];

  return pay.isDateOnly ? _payDateHeaderItem(pay) : _payDetailItem(pay);
}

Widget _payDetailItem(Pay pay) {
  return Card(
      child: ListTile(
    leading: //Text(pay?.category?.imageParent ?? ""),
        (pay?.imageCategory == null ? null : Image.asset("assets/images/${pay?.imageCategory}.png")),
    title: Text(pay.namePay),
    trailing: Text(pay.amountFormat),
    subtitle: Text(pay.account.name),
  ));
}

Widget _payDateHeaderItem(Pay pay) {
  return Card(color: Colors.blueGrey, child: ListTile(leading: Text(pay.createdFormat)));
}
