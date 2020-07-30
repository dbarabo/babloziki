import 'package:babloziki/src/babloziki/db/entity/catalog.dart';
import 'package:babloziki/src/babloziki/model/account_model.dart';
import 'package:babloziki/src/babloziki/model/category_model.dart';
import 'package:babloziki/src/babloziki/model/pay_model.dart';
import 'package:babloziki/src/babloziki/screen/pay_detail_edit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom_theme.dart';

void datePaySelectedClick(BuildContext context, Pay selectedPay) async {
  DateTime selectedDate = selectedPay?.created ?? DateTime.now();

  DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: new DateTime(DateTime.now().year - 1),
      lastDate: new DateTime(DateTime.now().year + 1));

  if (picked != null && selectedPay?.created != picked) {
    selectedPay?.created = picked;
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute<PayDetailEdit>(builder: (_) => PayDetailEdit()));
  }
}

void accountSelectedClick(BuildContext context) {
  showDialog<void>(context: context, builder: (ctx) => _accountDialog(ctx));
}

void categoryChildClick(BuildContext context) {
  showDialog<void>(context: context, builder: (ctx) => _categoryChildDialog(ctx));
}

void categoryParentClick(BuildContext context) {
  showDialog<void>(context: context, builder: (ctx) => _categoryParentDialog(ctx));
}

Widget _accountDialog(BuildContext context) {
  return SimpleDialog(title: const Text('Счета'), children: _accountItems(context));
}

List<Widget> _accountItems(BuildContext context) {
  final accountModel = context.watch<AccountModel>();

  return accountModel.accounts?.map<Widget>((account) => _createSimpleAccount(context, account))?.toList();
}

Widget _createSimpleAccount(BuildContext context, Account account) {
  final accountImage = (account?.accountType?.image == null)
      ? Text("")
      : Image.asset("assets/images/${account?.accountType?.image}.png",
          scale: MediaQuery.of(context).devicePixelRatio * 2);

  return SimpleDialogOption(
      child: Row(children: <Widget>[
        accountImage,
        Expanded(
            child: Text("${account.name} [${account.restFormat}]",
                style: Theme.of(context).textTheme.bodyText1.apply(color: CustomTheme.color)))
      ]),
      onPressed: () => {null});
}

Widget _categoryChildDialog(BuildContext context) {
  Pay selectedPay = context.watch<PayModel>().selected;

  Category category =
      selectedPay.category?.parent == null ? selectedPay.category : selectedPay.category?.parent;

  return SimpleDialog(
      title: Text('Детализация: ${category?.name}'),
      children: _categoryChildItems(context, category, selectedPay));
}

Widget _categoryParentDialog(BuildContext context) {
  return SimpleDialog(title: const Text('Категории'), children: _categoryParentItem(context));
}

List<Widget> _categoryChildItems(BuildContext context, Category parentCategory, Pay selectedPay) {
  final categoryModel = context.watch<CategoryModel>();

  return categoryModel
      .childCategories(parentCategory)
      ?.map<Widget>((category) => _createSimpleChildCategory(context, category, selectedPay))
      ?.toList();
}

Widget _createSimpleChildCategory(BuildContext context, Category category, Pay selectedPay) {
  return SimpleDialogOption(
      child:
          Text(category.name, style: Theme.of(context).textTheme.headline6.apply(color: CustomTheme.color)),
      onPressed: () => _clickSelectChildCategory(context, category, selectedPay));
}

void _clickSelectChildCategory(BuildContext context, Category category, Pay selectedPay) {
  Navigator.pop(context);
  if (selectedPay?.category?.id != category?.id) {
    selectedPay.category = category;
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute<PayDetailEdit>(builder: (_) => PayDetailEdit()));
  }
}

List<Widget> _categoryParentItem(BuildContext context) {
  final categoryModel = context.watch<CategoryModel>();

  Pay selectedPay = context.watch<PayModel>().selected;

  final items = List<Widget>(categoryModel.parentCategories.length);

  var indexSelectedPay = -1;
  for (var index = 0; index < items.length; index++) {
    Category category = categoryModel.parentCategories[index];

    if (category?.id == selectedPay?.category?.id) {
      indexSelectedPay = index;
    }

    final categoryImage = (category.image == null)
        ? Text("")
        : Image.asset("assets/images/${category.image}.png",
            scale: MediaQuery.of(context).devicePixelRatio * 2);

    items[index] = SimpleDialogOption(
        child: Row(children: <Widget>[
          categoryImage,
          Expanded(
              child: Text(category.name,
                  style: Theme.of(context).textTheme.headline6.apply(color: CustomTheme.color)))
        ]),
        onPressed: () => _clickSelectParentCategory(context, category, selectedPay));
  }

  items.swap(0, indexSelectedPay);

  return items;
}

void _clickSelectParentCategory(BuildContext context, Category category, Pay selectedPay) {
  Navigator.pop(context);
  if (selectedPay?.category?.parent?.id != category?.id) {
    selectedPay.category = category;
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute<PayDetailEdit>(builder: (_) => PayDetailEdit()));
  }
}

extension ListSwap<T> on List<T> {
  void swap(int index1, int index2) {
    if (index1 < 0 || index2 < 0) return;

    final it = this[index1];
    this[index1] = this[index2];
    this[index2] = it;
  }
}
