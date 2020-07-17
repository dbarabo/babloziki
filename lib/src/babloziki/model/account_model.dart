import 'package:babloziki/src/babloziki/db/babloz_db.dart';
import 'package:babloziki/src/babloziki/db/entity/catalog.dart';

abstract class AccountModel {
  List<Account> get accounts;

  int get countAccounts;
}

class AccountModelDb implements AccountModel {
  static final AccountModel _instance = AccountModelDb._internal();

  AccountModelDb._internal();

  static List<Account> _accounts;

  static Future<AccountModel> init() async {
    _accounts = await BablozDb().queryAccount.mainEntityList;

    return _instance;
  }

  @override
  int get countAccounts => _accounts.length ?? 0;

  @override
  List<Account> get accounts => _accounts;
}
