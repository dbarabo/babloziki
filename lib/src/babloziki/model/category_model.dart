import 'package:babloziki/src/babloziki/db/babloz_db.dart';
import 'package:babloziki/src/babloziki/db/entity/catalog.dart';

abstract class CategoryModel {
  List<Category> get parentCategories;

  List<Category> childCategories(Category parent);
}

class CategoryModelDb implements CategoryModel {
  static final CategoryModel _instance = CategoryModelDb._internal();

  CategoryModelDb._internal();

  static List<Category> _parentCategories;

  static List<Category> _allCategories;

  static CategoryModel instance() => _instance;

  static Future<CategoryModel> init() async {
    _allCategories = await BablozDb().queryCategory.mainEntityList;

    _parentCategories = _allCategories.where((it) => it.parent == null).toList();

    return _instance;
  }

  @override
  List<Category> get parentCategories => _parentCategories;

  @override
  List<Category> childCategories(Category parent) {
    List<Category> result = List<Category>();
    if (parent != null) result.add(parent);

    final childs = _allCategories.where((it) => it?.parent?.id == parent?.id);

    return result..addAll(childs);
  }
}
