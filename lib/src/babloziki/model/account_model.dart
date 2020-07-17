import 'package:babloziki/src/babloziki/db/babloz_db.dart';
import 'package:babloziki/src/babloziki/db/entity/catalog.dart';

abstract class AccountModel {
  List<Account> get accounts;

  int get countAccounts;
}

class AccountModelDb implements AccountModel {
  int _countAccounts = 0;

  List<Account> _accounts;

  init() async {
    _accounts = await BablozDb().queryAccount.mainEntityList;
    _countAccounts = _accounts.length;
  }

  @override
  int get countAccounts => _countAccounts;

  @override
  List<Account> get accounts => _accounts;
}
