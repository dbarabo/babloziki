import 'package:babloziki/src/babloziki/db/babloz_db.dart';
import 'package:babloziki/src/babloziki/db/entity/catalog.dart';
import 'package:flutter/cupertino.dart';

abstract class AccountModel {
  Future<List<Account>> get accountList;
}

class AccountModelDb with ChangeNotifier implements AccountModel {
  @override
  Future<List<Account>> get accountList async => await BablozDb().queryAccount.mainEntityList;
}
