// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:babloziki/src/babloziki/db/babloz_db.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'main.reflectable.dart';

void main() async {
  initializeReflectable();

  WidgetsFlutterBinding.ensureInitialized();

  await _currencyCheck();

  await _accountCheck();

  await _categoryCheck();

  await _payCheck();

//  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//    // Build our app and trigger a frame.
//    await tester.pumpWidget(MyApp());
//
//    print("before currency");
//
//    final listCurrency = await BablozDb().queryCurrency.select();
//    for (var cur in listCurrency) {
//      print("cur=$cur");
//    }

  /*
    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

     */
  // });
}

_currencyCheck() async {
  test('currency is exists', () async {
    final listCurrency = await BablozDb().queryCurrency.select();

    expect(listCurrency.length, 3);

    listCurrency.firstWhere((it) => it.name == "RUR");
  });
}

_accountCheck() async {
  test('account is exists', () async {
    final accounts = await BablozDb().queryAccount.select();

    expect(accounts.length, 13);

    accounts.firstWhere((it) => it.name == "CASH");
  });
}

_categoryCheck() async {
  test('category is exists', () async {
    final categories = await BablozDb().queryCategory.select();

    expect(categories.length, 56);

    categories.firstWhere((it) => it.name == "Супермаркет");

    categories.firstWhere((it) => it.name == "Зарплата");
  });
}

_payCheck() async {
  test('pay is exists', () async {
    final pays = await BablozDb().queryPay.select();
    expect(pays.length, 8647);

    pays.firstWhere((it) => it.account.name == "CASH");
  });
}
