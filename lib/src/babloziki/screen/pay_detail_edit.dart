import 'package:babloziki/src/babloziki/db/entity/catalog.dart';
import 'package:babloziki/src/babloziki/model/pay_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:provider/provider.dart';

import 'custom_theme.dart';
import 'pay_edit_selected_items.dart';

// ignore: must_be_immutable
class PayDetailEdit extends StatelessWidget {
  MoneyMaskedTextController amountController =
      MoneyMaskedTextController(decimalSeparator: ',', thousandSeparator: ' ');

  @override
  Widget build(BuildContext context) {
    final payModel = context.watch<PayModel>();
    final pay = payModel?.selected;

    return MaterialApp(
        title: 'Правка платежа',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          dividerColor: CustomTheme.color,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Правка платежа"),
              //  bottom: _tabBarMenuPay(pay),
            ),
            bottomNavigationBar: _bottomNavigationBar(),
            body: _detailPay(pay, context)));
  }

  Widget _detailPay(Pay pay, BuildContext context) {
    amountController.updateValue(pay?.amount ?? 0.0);

    final amountText = Container(
        color: CustomTheme.backGroundColor,
        child: TextField(
            controller: amountController,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.headline6.apply(color: Colors.teal, fontSizeFactor: 2.0)));

    final categoryImage = (pay?.imageCategory == null)
        ? null
        : Image.asset("assets/images/${pay.imageCategory}.png",
            scale: MediaQuery.of(context).devicePixelRatio * 2);

    final categoryParent = RaisedButton(
      child: categoryImage ?? Text("..."),
      onPressed: () => categoryParentClick(context),
    );

    final categoryChild = RaisedButton(
      child: Text(pay.namePay, style: Theme.of(context).textTheme.headline6.apply(color: CustomTheme.color)),
      onPressed: () => categoryChildClick(context),
    );

    final double heightCategory = 144 * MediaQuery.of(context).devicePixelRatio / 6.0;

    final categoryRow = Container(
        color: CustomTheme.backGroundColor,
        child: Row(children: <Widget>[
          Container(height: heightCategory, child: categoryParent),
          Container(height: heightCategory, child: categoryChild),
          Expanded(child: categoryChild)
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
}

BottomNavigationBar _bottomNavigationBar() {
  return BottomNavigationBar(items: const <BottomNavigationBarItem>[
    const BottomNavigationBarItem(icon: Icon(Icons.save), title: Text('Сохранить')),
    const BottomNavigationBarItem(icon: Icon(Icons.arrow_back), title: Text('Назад')),
  ], onTap: (index) => _bottomClicks[index]());
}

const _bottomClicks = [_bottomNavigationClickSave, _bottomNavigationClickBack];

void _bottomNavigationClickSave() {}

void _bottomNavigationClickBack() {}
