import 'package:babloziki/src/babloziki/db/entity/catalog.dart';
import 'package:babloziki/src/babloziki/model/pay_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PayDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Детали платежа',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          dividerColor: _color,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("Детали платежа")),
            body: _detailPay(context.watch<PayModel>()?.selected, context)));
  }
}

const _color = Colors.black54;

const _backGroundColor = Colors.black12;

Widget _detailPay(Pay pay, BuildContext context) {
  final amountText = Container(
      color: _backGroundColor,
      child: Text(pay?.amountFormat,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.headline6.apply(color: Colors.teal, fontSizeFactor: 2.0)));

  final categoryImage = (pay?.imageCategory == null)
      ? null
      : Image.asset("assets/images/${pay.imageCategory}.png", scale: MediaQuery.of(context).devicePixelRatio);

  final categoryImageNotNull = (categoryImage == null) ? Text("") : categoryImage;

  final double heightCategory = 144 * MediaQuery.of(context).devicePixelRatio / 3.0;

  print("categoryImage=${categoryImage.height}");

  final categoryRow = Container(
      color: _backGroundColor,
      child: Row(children: <Widget>[
        Container(height: heightCategory, child: categoryImageNotNull),
        Expanded(child: Text(pay.namePay, style: Theme.of(context).textTheme.headline6.apply(color: _color)))
      ]));

  final dateText = Container(
      color: _backGroundColor,
      child: Row(children: <Widget>[
        Expanded(
            child: Text("🗓",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .apply(color: Colors.tealAccent, fontSizeFactor: 1.5))),
        Expanded(
            child:
                Text(pay?.createdFormat, style: Theme.of(context).textTheme.headline6.apply(color: _color)))
      ]));

  final accountImage = (pay?.account?.accountType?.image == null)
      ? null
      : Image.asset("assets/images/${pay?.account?.accountType?.image}.png",
          scale: MediaQuery.of(context).devicePixelRatio * 2);

  print("accountImage=${accountImage.height}");

  final accountImageOrText = accountImage == null ? Text("") : accountImage;

  final accountRow = Container(
      //color: _backGroundColor,
      child: Row(children: <Widget>[
    Container(height: accountImage.height, child: accountImageOrText),
    Expanded(
        child: Text(pay?.account?.name, style: Theme.of(context).textTheme.headline6.apply(color: _color)))
  ]));

  final description =
      Text(pay?.description ?? "", style: Theme.of(context).textTheme.bodyText1.apply(color: _color));

  return ListView(children: <Widget>[
    amountText,
    categoryRow,
    Divider(thickness: 1),
    dateText,
    Divider(thickness: 1),
    accountRow,
    Divider(thickness: 1),
    description
  ]);
}
