import 'package:babloziki/src/babloziki/db/babloz_db.dart';
import 'package:babloziki/src/babloziki/db/entity/catalog.dart';
import 'package:babloziki/src/idiomatic/impl/reflect.dart';

abstract class PayModel {
  void setFilter(Pay filter);

  List<Pay> get pays;

  int get countPays;

  Pay get selected;
  set selected(Pay pay);

  Pay get editable;
  set editable(Pay pay);

  Future<Pay> save();
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

  Pay _selected;

  Pay _editable;

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

  @override
  Pay get selected => _selected;

  set selected(Pay pay) {
    _selected = pay;
  }

  @override
  Pay get editable => _editable;
  set editable(Pay pay) {
    _editable = copy<Pay>(pay);
  }

  @override
  Future<Pay> save() async {
    final isEdit = _editable?.id != null;

    Pay savePay = await BablozDb().queryPay.save(_editable);

    if (isEdit) {
      final findPay =
          (savePay.id == _selected?.id) ? _selected : _allPays.firstWhere((it) => it.id == savePay.id);
      savePay.copyTo(findPay);
    } else {
      int indexFindPayDate =
          _allPays.indexWhere((it) => it.id == null && it.created?.isSameDate(savePay.created) == true);

      if (indexFindPayDate >= 0) {
        _allPays.insert(indexFindPayDate + 1, savePay);
      } else {
        int indexLessPayDate =
            _allPays.indexWhere((it) => it.id == null && it.created?.isBefore(savePay.created) == true);

        if (indexLessPayDate < 0) indexLessPayDate = 0;

        _allPays.insert(indexFindPayDate, savePay);
        _allPays.insert(indexFindPayDate, Pay(null, savePay.created));
      }
      _filterPays = _setFilter(_filter);
    }

    return savePay;
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return other != null && this.year == other.year && this.month == other.month && this.day == other.day;
  }
}
