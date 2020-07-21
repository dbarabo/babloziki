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

  static List<Pay> _allPays;

  static PayModel instance() => _instance;

  static Future<PayModel> init() async {
    final paysWithOutDateHeader = await BablozDb().queryPay.mainEntityList;

    _allPays = _addDateHeaderPays(paysWithOutDateHeader);

    return _instance;
  }

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

  static List<Pay> _addDateHeaderPays(List<Pay> pays) {
    final result = List<Pay>();

    if ((pays?.length ?? 0) == 0) return result;

    var priorDate = pays[0].created;

    result.add(Pay(null, priorDate));

    for (var pay in pays) {
      if (!priorDate.isSameDate(pay.created)) {
        priorDate = pay.created;
        result.add(Pay(null, priorDate));
      }
      result.add(pay);
    }

    return result;
  }

  List<Pay> _setFilter(Pay filter) {
    if (filter == null) return _allPays;

    return _addDateHeaderPays(_allPays.where((pay) => pay.isEqualNotNull(filter)).toList());
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return other != null && this.year == other.year && this.month == other.month && this.day == other.day;
  }
}
