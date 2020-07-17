import 'package:babloziki/src/babloziki/db/entity/catalog.dart';
import 'package:babloziki/src/babloziki/model/account_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Баблозики',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ListView.builder(
          itemCount: context.watch<AccountModel>().countAccounts,
          itemBuilder: (context, index) => _accountItem(context.watch<AccountModel>(), index),
          //itemExtent: 25.0,
        ));
  }
}

Widget _accountItem(AccountModel accountModel, int index) {
  final Account account = accountModel.accounts[index];

  return Card(
      child: ListTile(
          title: Text(account.name),
          trailing: Text(account.restFormat),
          subtitle: Text(account.accountType.toString())));
}
