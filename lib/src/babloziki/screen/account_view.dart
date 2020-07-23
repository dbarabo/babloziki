import 'package:babloziki/src/babloziki/db/entity/catalog.dart';
import 'package:babloziki/src/babloziki/model/account_model.dart';
import 'package:babloziki/src/babloziki/model/pay_model.dart';
import 'package:babloziki/src/babloziki/screen/pay_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Счета',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ListView.builder(
            itemCount: context.watch<AccountModel>()?.countAccounts ?? 0,
            itemBuilder: (context, index) => _accountItem(context, index)));
  }
}

Widget _accountItem(BuildContext context, int index) {
  AccountModel accountModel = context.watch<AccountModel>();

  final Account account = accountModel.accounts[index];

  return Card(
      child: ListTile(
    leading: (account?.accountType?.image == null
        ? null
        : Image.asset("assets/images/${account?.accountType?.image}.png")),
    title: Text(account.name),
    trailing: Text(account.restFormat),
    subtitle: Text(account.accountType.toString()),
    onTap: () => _accountItemTap(account, context),
  ));
}

void _accountItemTap(Account account, BuildContext context) {
  PayModel payModel = Provider.of<PayModel>(context, listen: false); //context.watch<PayModel>();

  payModel.setFilter(Pay(account));
  Navigator.push(
    context,
    MaterialPageRoute<PayView>(builder: (_) => PayView()),
  );
}
