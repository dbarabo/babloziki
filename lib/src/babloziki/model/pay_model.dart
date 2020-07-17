import 'package:babloziki/src/babloziki/db/babloz_db.dart';
import 'package:babloziki/src/babloziki/db/entity/catalog.dart';

abstract class PayModel {
  void setFilter(Pay filter);

  List<Pay> get pays;

  int get countPays;
}

class PayModelDb implements PayModel {
  static final PayModel _instance = PayModelDb._internal();

  PayModelDb._internal();

  static Future<PayModel> init() async {
    _allPays = await BablozDb().queryPay.mainEntityList;

    return _instance;
  }

  static List<Pay> _allPays;

  Pay _filter;

  List<Pay> _filterPays;

  @override
  void setFilter(Pay filter) {
    if (_filter == filter) {
      return;
    }

    _filter = filter;
    _filterPays = _setFilter(_filter);
  }

  @override
  int get countPays => _filterPays?.length ?? 0;

  @override
  List<Pay> get pays => _filterPays;

  List<Pay> _setFilter(Pay filter) {
    if (filter == null) return _allPays;

    return _allPays.where((pay) => pay.isEqualNotNull(filter));
  }
}
