import 'package:babloziki/src/idiomatic/annotation/annotations.dart';
import 'package:intl/intl.dart';
import 'package:quiver/core.dart';

@Entity("CURRENCY")
class Currency {
  int id;

  String name;

  String ext;

  int sync;

  Currency([this.name, this.ext]);

  NumberFormat get formatter => NumberFormat.currency(
        locale: "ru_RU",
        symbol: ext,
        decimalDigits: 2,
      );

  @override
  bool operator ==(Object other) =>
      other is Currency && other.id == id && other.name == name && other.ext == ext;

  @override
  int get hashCode => hash3(id, name, ext);

  @override
  String toString() => "Currency id:$id name:$name ext:$ext sync:$sync";
}

@Entity("ACCOUNT")
class Account {
  int id;

  String name;

  String description;

  Currency currency;

  int type = 0;

  int isUseDebt = 0;

  DateTime closed;

  int sync;

  @readOnly
  double rest;

  Account([this.name, this.currency, this.type]);

  AccountType get accountType => AccountType.byDbValue(type);
  set categoryType(AccountType accountType) => type = accountType.dbValue;

  String get restFormat => rest == null || currency == null ? "0.00" : currency.formatter.format(rest);

  @override
  bool operator ==(Object other) =>
      other is Account &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.type == type &&
      other.isUseDebt == isUseDebt &&
      other.closed == closed;

  @override
  int get hashCode => hashObjects(<dynamic>[id, name, description, type, isUseDebt, closed]);

  @override
  String toString() =>
      "Account id:$id name:$name description:$description currency:$currency type:$type accountType:$accountType accountisUseDebt:$isUseDebt closed:$closed rest:$rest";
}

class AccountType {
  final int dbValue;

  final String label;

  final String image;

  const AccountType._internal(this.dbValue, this.label, this.image);

  static const CURRENT = AccountType._internal(0, "Текущие (оборотные)", "account");
  static const CREDIT = AccountType._internal(1, "Расходные (кредиты)", "loan");
  static const DEPOSIT = AccountType._internal(2, "Доходные (вклады)", "deposit");

  static const List<AccountType> _values = [CURRENT, CREDIT, DEPOSIT];

  static AccountType byDbValue(int value) => value == null ? null : _values[value];

  @override
  String toString() => label;
}

@Entity("CATEGORY")
class Category {
  int id;

  String name;

  Category parent;

  int type = 0;

  int sync;

  String image;

  CategoryType get categoryType => CategoryType.byDbValue(type);
  set categoryType(CategoryType categoryType) => type = categoryType.dbValue;

  @readOnly
  double turn;

  Category([this.name, this.parent, this.type]);

  String get imageParent => (image != null) ? image : parent?.image;

  @override
  bool operator ==(Object other) =>
      other is Category &&
      other.id == id &&
      other.name == name &&
      other.parent == parent &&
      other.type == type;

  @override
  int get hashCode => hash4(id, name, parent, type);

  @override
  String toString() =>
      "Category id:$id name:$name image: $image parent:${parent?.name} type:$type categoryType:$categoryType turn:$turn sync:$sync";
}

class CategoryType {
  final int dbValue;

  final String label;

  const CategoryType._internal(this.dbValue, this.label);

  static const COST = CategoryType._internal(0, "Расходы");
  static const INCOMES = CategoryType._internal(1, "Доходы");
  static const TRANSFER = CategoryType._internal(2, "Перевод");

  static const List<CategoryType> _values = [COST, INCOMES, TRANSFER];

  static CategoryType byDbValue(int value) => value == null ? null : _values[value];

  @override
  String toString() => label;
}

@Entity("PERSON")
class Person {
  int id;

  String name;

  Person parent;

  String description;

  int sync;

  @readOnly
  double debt;

  @readOnly
  double credit;

  Person([this.name, this.parent, this.description]);

  @override
  bool operator ==(Object other) =>
      other is Person &&
      other.id == id &&
      other.name == name &&
      other.parent == parent &&
      other.description == description;

  @override
  int get hashCode => hash4(id, name, parent, description);

  @override
  String toString() => "Person id:$id name:$name parent:${parent?.name} debt:$debt credit:$credit sync:$sync";
}

@Entity("PROJECT")
class Project {
  int id;

  String name;

  Project parent;

  String description;

  int sync;

  Project([this.name, this.parent, this.description]);

  @override
  bool operator ==(Object other) =>
      other is Project &&
      other.id == id &&
      other.name == name &&
      other.parent == parent &&
      other.description == description;

  @override
  int get hashCode => hash4(id, name, parent, description);

  @override
  String toString() => "Project id:$id name:$name parent:${parent?.name} sync:$sync";
}

@Entity("PAY")
class Pay {
  int id;

  Account account;

  DateTime created;

  Category category;

  double amount;

  Account accountTo;

  Person person;

  Project project;

  String description;

  double amountTo;

  int sync;

  Pay(
      [this.account,
      this.created,
      this.category,
      this.amount,
      this.accountTo,
      this.person,
      this.project,
      this.description,
      this.amountTo]);

  @override
  bool operator ==(Object other) =>
      other is Pay &&
      other.id == id &&
      other.account == account &&
      other.created == created &&
      other.category == category &&
      other.amount == amount &&
      other.accountTo == accountTo &&
      other.person == person &&
      other.project == project &&
      other.description == description &&
      other.amountTo == amountTo;

  bool get isDateOnly => created != null && id == null && account == null;

  String get amountFormat => account?.currency?.formatter?.format(amount) ?? "???";

  String get createdFormat => created == null ? "" : _formatDate.format(created);

  String get namePay => category?.id != null ? category.name : "Перевод $_accountToAmont";

  String get _accountToAmont => accountTo != null ? "$_fromToAmount${accountTo.name}" : "";

  String get _fromToAmount => (amount ?? 0.0) > 0.0 ? "с " : "на ";

  String get imageCategory => category != null ? category.imageParent : "transfer";

  static final _formatDate = DateFormat.yMd('ru_RU');

  @override
  int get hashCode => hashObjects(
      <dynamic>[id, account, created, category, amount, accountTo, person, project, description, amountTo]);

  @override
  String toString() =>
      "Pay id:$id created:$created amount:$amount account:${account?.name} category:${category?.name} accountTo:${accountTo?.name} person:${person?.name} project:${project?.name} description:$description";

  bool isEqualNotNull(Pay other) {
    if (other == null) return false;

    return (nullOrEqual(other.id, id) &&
        nullOrEqual(other.account, account) &&
        nullOrEqual(other.created, created) &&
        nullOrEqual(other.category, category) &&
        nullOrEqual(other.amount, amount) &&
        nullOrEqual(other.accountTo, accountTo) &&
        nullOrEqual(other.person, person) &&
        nullOrEqual(other.project, project) &&
        nullOrEqual(other.description, description) &&
        nullOrEqual(other.amountTo, amountTo));
  }
}

bool nullOrEqual<T>(T item, T other) {
  if (item == null) return true;

  return item == other;
}
