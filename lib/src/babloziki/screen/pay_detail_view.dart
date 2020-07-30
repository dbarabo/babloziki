import 'package:babloziki/src/babloziki/db/entity/catalog.dart';
import 'package:babloziki/src/babloziki/model/pay_model.dart';
import 'package:babloziki/src/babloziki/screen/pay_detail_edit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom_theme.dart';

class PayDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final payModel = context.watch<PayModel>();
    final pay = payModel?.selected;

    return MaterialApp(
        title: 'Детали платежа',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          dividerColor: CustomTheme.color,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Детали платежа"),
              //  bottom: _tabBarMenuPay(pay),
            ),
            bottomNavigationBar: _bottomNavigationBar(context),
            body: _detailPay(pay, context)));
  }
}

BottomNavigationBar _bottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(items: const <BottomNavigationBarItem>[
    const BottomNavigationBarItem(icon: Icon(Icons.edit), title: Text('Изменить')),
    const BottomNavigationBarItem(icon: Icon(Icons.content_copy), title: Text('Копировать')),
    const BottomNavigationBarItem(icon: Icon(Icons.delete_forever), title: Text('Удалить'))
  ], onTap: (index) => _bottomClicks[index](context));
}

const _bottomClicks = [_bottomNavigationClickEdit, _bottomNavigationClickCopy, _bottomNavigationClickDelete];

void _bottomNavigationClickEdit(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute<PayDetailEdit>(builder: (_) => PayDetailEdit()),
  );
}

void _bottomNavigationClickCopy(BuildContext context) {}

void _bottomNavigationClickDelete(BuildContext context) {}

Widget _detailPay(Pay pay, BuildContext context) {
  final amountText = Container(
      color: CustomTheme.backGroundColor,
      child: Text(pay?.amountFormat,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.headline6.apply(color: Colors.teal, fontSizeFactor: 2.0)));

  final categoryImage = (pay?.imageCategory == null)
      ? null
      : Image.asset("assets/images/${pay.imageCategory}.png", scale: MediaQuery.of(context).devicePixelRatio);

  final categoryImageNotNull = (categoryImage == null) ? Text("") : categoryImage;

  final double heightCategory = 144 * MediaQuery.of(context).devicePixelRatio / 3.0;

  final categoryRow = Container(
      color: CustomTheme.backGroundColor,
      child: Row(children: <Widget>[
        Container(height: heightCategory, child: categoryImageNotNull),
        Expanded(
            child: Text(pay.namePay,
                style: Theme.of(context).textTheme.headline6.apply(color: CustomTheme.color)))
      ]));

  final dateText = Container(
      color: CustomTheme.backGroundColor,
      child: Row(children: <Widget>[
        Expanded(
            child: Text("🗓",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .apply(color: Colors.tealAccent, fontSizeFactor: 1.5))),
        Expanded(
            child: Text(pay?.createdFormat,
                style: Theme.of(context).textTheme.headline6.apply(color: CustomTheme.color)))
      ]));

  final accountImage = (pay?.account?.accountType?.image == null)
      ? null
      : Image.asset("assets/images/${pay?.account?.accountType?.image}.png",
          scale: MediaQuery.of(context).devicePixelRatio * 2);

  final accountImageOrText = accountImage == null ? Text("") : accountImage;

  final accountRow = Container(
      //color: _backGroundColor,
      child: Row(children: <Widget>[
    Container(height: accountImage.height, child: accountImageOrText),
    Expanded(
        child: Text(pay?.account?.name,
            style: Theme.of(context).textTheme.headline6.apply(color: CustomTheme.color)))
  ]));

  final description = Text(pay?.description ?? "",
      style: Theme.of(context).textTheme.bodyText1.apply(color: CustomTheme.color));

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
