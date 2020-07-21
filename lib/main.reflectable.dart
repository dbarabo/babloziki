// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';
import 'package:babloziki/src/babloziki/db/entity/catalog.dart' as prefix1;
import 'package:babloziki/src/idiomatic/annotation/annotations.dart' as prefix0;
import 'package:intl/intl.dart' as prefix2;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Entity(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'Currency',
            r'.Currency',
            7,
            0,
            const prefix0.Entity(),
            const <int>[0, 1, 2, 3, 43, 44, 53, 54, 55],
            const <int>[43, 44, 56, 54, 57, 45, 46, 47, 48, 49, 50, 51, 52, 53],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) =>
                  ([name, ext]) => b ? prefix1.Currency(name, ext) : null
            },
            -1,
            -1,
            const <int>[-1],
            const <Object>[const prefix0.Entity("CURRENCY")],
            null),
        r.NonGenericClassMirrorImpl(
            r'Account',
            r'.Account',
            7,
            1,
            const prefix0.Entity(),
            const <int>[
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              58,
              59,
              78,
              79,
              80,
              81,
              82
            ],
            const <int>[
              58,
              59,
              56,
              81,
              57,
              60,
              61,
              62,
              63,
              64,
              65,
              66,
              67,
              68,
              69,
              70,
              71,
              72,
              73,
              74,
              75,
              76,
              77,
              78,
              79,
              80
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) => ([name, currency, type]) =>
                  b ? prefix1.Account(name, currency, type) : null
            },
            -1,
            -1,
            const <int>[-1],
            const <Object>[const prefix0.Entity("ACCOUNT")],
            null),
        r.NonGenericClassMirrorImpl(
            r'Category',
            r'.Category',
            7,
            2,
            const prefix0.Entity(),
            const <int>[
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              83,
              84,
              99,
              100,
              101,
              102,
              103
            ],
            const <int>[
              83,
              84,
              56,
              102,
              57,
              85,
              86,
              87,
              88,
              89,
              90,
              91,
              92,
              93,
              94,
              95,
              96,
              97,
              98,
              99,
              100,
              101
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) => ([name, parent, type]) =>
                  b ? prefix1.Category(name, parent, type) : null
            },
            -1,
            -1,
            const <int>[-1],
            const <Object>[const prefix0.Entity("CATEGORY")],
            null),
        r.NonGenericClassMirrorImpl(
            r'Person',
            r'.Person',
            7,
            3,
            const prefix0.Entity(),
            const <int>[20, 21, 22, 23, 24, 25, 26, 104, 105, 120, 121],
            const <int>[
              104,
              105,
              56,
              120,
              57,
              106,
              107,
              108,
              109,
              110,
              111,
              112,
              113,
              114,
              115,
              116,
              117,
              118,
              119
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) => ([name, parent, description]) =>
                  b ? prefix1.Person(name, parent, description) : null
            },
            -1,
            -1,
            const <int>[-1],
            const <Object>[const prefix0.Entity("PERSON")],
            null),
        r.NonGenericClassMirrorImpl(
            r'Project',
            r'.Project',
            7,
            4,
            const prefix0.Entity(),
            const <int>[27, 28, 29, 30, 31, 122, 123, 134, 135],
            const <int>[
              122,
              123,
              56,
              134,
              57,
              124,
              125,
              126,
              127,
              128,
              129,
              130,
              131,
              132,
              133
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) => ([name, parent, description]) =>
                  b ? prefix1.Project(name, parent, description) : null
            },
            -1,
            -1,
            const <int>[-1],
            const <Object>[const prefix0.Entity("PROJECT")],
            null),
        r.NonGenericClassMirrorImpl(
            r'Pay',
            r'.Pay',
            7,
            5,
            const prefix0.Entity(),
            const <int>[
              32,
              33,
              34,
              35,
              36,
              37,
              38,
              39,
              40,
              41,
              42,
              136,
              137,
              138,
              161,
              162,
              163,
              164,
              165,
              166
            ],
            const <int>[
              136,
              137,
              56,
              165,
              57,
              138,
              139,
              140,
              141,
              142,
              143,
              144,
              145,
              146,
              147,
              148,
              149,
              150,
              151,
              152,
              153,
              154,
              155,
              156,
              157,
              158,
              159,
              160,
              161,
              162,
              163,
              164
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) => (
                      [account,
                      created,
                      category,
                      amount,
                      accountTo,
                      person,
                      project,
                      description,
                      amountTo]) =>
                  b
                      ? prefix1.Pay(account, created, category, amount,
                          accountTo, person, project, description, amountTo)
                      : null
            },
            -1,
            -1,
            const <int>[-1],
            const <Object>[const prefix0.Entity("PAY")],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(
            r'id', 32773, 0, const prefix0.Entity(), -1, 6, 6, null, const []),
        r.VariableMirrorImpl(r'name', 32773, 0, const prefix0.Entity(), -1, 7,
            7, null, const []),
        r.VariableMirrorImpl(
            r'ext', 32773, 0, const prefix0.Entity(), -1, 7, 7, null, const []),
        r.VariableMirrorImpl(r'sync', 32773, 0, const prefix0.Entity(), -1, 6,
            6, null, const []),
        r.VariableMirrorImpl(
            r'id', 32773, 1, const prefix0.Entity(), -1, 6, 6, null, const []),
        r.VariableMirrorImpl(r'name', 32773, 1, const prefix0.Entity(), -1, 7,
            7, null, const []),
        r.VariableMirrorImpl(r'description', 32773, 1, const prefix0.Entity(),
            -1, 7, 7, null, const []),
        r.VariableMirrorImpl(r'currency', 32773, 1, const prefix0.Entity(), 0,
            0, 0, null, const []),
        r.VariableMirrorImpl(r'type', 32773, 1, const prefix0.Entity(), -1, 6,
            6, null, const []),
        r.VariableMirrorImpl(r'isUseDebt', 32773, 1, const prefix0.Entity(), -1,
            6, 6, null, const []),
        r.VariableMirrorImpl(r'closed', 32773, 1, const prefix0.Entity(), -1, 8,
            8, null, const []),
        r.VariableMirrorImpl(r'sync', 32773, 1, const prefix0.Entity(), -1, 6,
            6, null, const []),
        r.VariableMirrorImpl(r'rest', 32773, 1, const prefix0.Entity(), -1, 9,
            9, null, const <Object>[prefix0.readOnly]),
        r.VariableMirrorImpl(
            r'id', 32773, 2, const prefix0.Entity(), -1, 6, 6, null, const []),
        r.VariableMirrorImpl(r'name', 32773, 2, const prefix0.Entity(), -1, 7,
            7, null, const []),
        r.VariableMirrorImpl(r'parent', 32773, 2, const prefix0.Entity(), 2, 2,
            2, null, const []),
        r.VariableMirrorImpl(r'type', 32773, 2, const prefix0.Entity(), -1, 6,
            6, null, const []),
        r.VariableMirrorImpl(r'sync', 32773, 2, const prefix0.Entity(), -1, 6,
            6, null, const []),
        r.VariableMirrorImpl(r'image', 32773, 2, const prefix0.Entity(), -1, 7,
            7, null, const []),
        r.VariableMirrorImpl(r'turn', 32773, 2, const prefix0.Entity(), -1, 9,
            9, null, const <Object>[prefix0.readOnly]),
        r.VariableMirrorImpl(
            r'id', 32773, 3, const prefix0.Entity(), -1, 6, 6, null, const []),
        r.VariableMirrorImpl(r'name', 32773, 3, const prefix0.Entity(), -1, 7,
            7, null, const []),
        r.VariableMirrorImpl(r'parent', 32773, 3, const prefix0.Entity(), 3, 3,
            3, null, const []),
        r.VariableMirrorImpl(r'description', 32773, 3, const prefix0.Entity(),
            -1, 7, 7, null, const []),
        r.VariableMirrorImpl(r'sync', 32773, 3, const prefix0.Entity(), -1, 6,
            6, null, const []),
        r.VariableMirrorImpl(r'debt', 32773, 3, const prefix0.Entity(), -1, 9,
            9, null, const <Object>[prefix0.readOnly]),
        r.VariableMirrorImpl(r'credit', 32773, 3, const prefix0.Entity(), -1, 9,
            9, null, const <Object>[prefix0.readOnly]),
        r.VariableMirrorImpl(
            r'id', 32773, 4, const prefix0.Entity(), -1, 6, 6, null, const []),
        r.VariableMirrorImpl(r'name', 32773, 4, const prefix0.Entity(), -1, 7,
            7, null, const []),
        r.VariableMirrorImpl(r'parent', 32773, 4, const prefix0.Entity(), 4, 4,
            4, null, const []),
        r.VariableMirrorImpl(r'description', 32773, 4, const prefix0.Entity(),
            -1, 7, 7, null, const []),
        r.VariableMirrorImpl(r'sync', 32773, 4, const prefix0.Entity(), -1, 6,
            6, null, const []),
        r.VariableMirrorImpl(
            r'id', 32773, 5, const prefix0.Entity(), -1, 6, 6, null, const []),
        r.VariableMirrorImpl(r'account', 32773, 5, const prefix0.Entity(), 1, 1,
            1, null, const []),
        r.VariableMirrorImpl(r'created', 32773, 5, const prefix0.Entity(), -1,
            8, 8, null, const []),
        r.VariableMirrorImpl(r'category', 32773, 5, const prefix0.Entity(), 2,
            2, 2, null, const []),
        r.VariableMirrorImpl(r'amount', 32773, 5, const prefix0.Entity(), -1, 9,
            9, null, const []),
        r.VariableMirrorImpl(r'accountTo', 32773, 5, const prefix0.Entity(), 1,
            1, 1, null, const []),
        r.VariableMirrorImpl(r'person', 32773, 5, const prefix0.Entity(), 3, 3,
            3, null, const []),
        r.VariableMirrorImpl(r'project', 32773, 5, const prefix0.Entity(), 4, 4,
            4, null, const []),
        r.VariableMirrorImpl(r'description', 32773, 5, const prefix0.Entity(),
            -1, 7, 7, null, const []),
        r.VariableMirrorImpl(r'amountTo', 32773, 5, const prefix0.Entity(), -1,
            9, 9, null, const []),
        r.VariableMirrorImpl(r'sync', 32773, 5, const prefix0.Entity(), -1, 6,
            6, null, const []),
        r.MethodMirrorImpl(r'==', 131074, 0, -1, 10, 10, null, const <int>[0],
            const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'toString', 131074, 0, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 0, 45),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 0, 46),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 1, 47),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 1, 48),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 2, 49),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 2, 50),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 3, 51),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 3, 52),
        r.MethodMirrorImpl(r'formatter', 131075, 0, -1, 11, 11, null,
            const <int>[], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'hashCode', 131075, 0, -1, 6, 6, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'', 0, 0, -1, 0, 0, null, const <int>[1, 2],
            const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'noSuchMethod', 65538, null, null, null, null, null,
            const <int>[7], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'runtimeType', 131075, null, -1, 12, 12, null,
            const <int>[], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'==', 131074, 1, -1, 10, 10, null, const <int>[8],
            const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'toString', 131074, 1, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 4, 60),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 4, 61),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 5, 62),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 5, 63),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 6, 64),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 6, 65),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 7, 66),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 7, 67),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 8, 68),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 8, 69),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 9, 70),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 9, 71),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 10, 72),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 10, 73),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 11, 74),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 11, 75),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 12, 76),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 12, 77),
        r.MethodMirrorImpl(r'accountType', 131075, 1, -1, 13, 13, null,
            const <int>[], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'categoryType=', 262148, 1, null, 14, 14, null,
            const <int>[21], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'restFormat', 131075, 1, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'hashCode', 131075, 1, -1, 6, 6, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'', 0, 1, -1, 1, 1, null, const <int>[9, 10, 11],
            const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'==', 131074, 2, -1, 10, 10, null, const <int>[22],
            const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'toString', 131074, 2, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 13, 85),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 13, 86),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 14, 87),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 14, 88),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 15, 89),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 15, 90),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 16, 91),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 16, 92),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 17, 93),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 17, 94),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 18, 95),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 18, 96),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 19, 97),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 19, 98),
        r.MethodMirrorImpl(r'categoryType', 131075, 2, -1, 15, 15, null,
            const <int>[], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'categoryType=', 262148, 2, null, 14, 14, null,
            const <int>[33], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'imageParent', 131075, 2, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'hashCode', 131075, 2, -1, 6, 6, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'', 0, 2, -1, 2, 2, null, const <int>[23, 24, 25],
            const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'==', 131074, 3, -1, 10, 10, null, const <int>[34],
            const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'toString', 131074, 3, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 20, 106),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 20, 107),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 21, 108),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 21, 109),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 22, 110),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 22, 111),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 23, 112),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 23, 113),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 24, 114),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 24, 115),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 25, 116),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 25, 117),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 26, 118),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 26, 119),
        r.MethodMirrorImpl(r'hashCode', 131075, 3, -1, 6, 6, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'', 0, 3, -1, 3, 3, null, const <int>[35, 36, 37],
            const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'==', 131074, 4, -1, 10, 10, null, const <int>[45],
            const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'toString', 131074, 4, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 27, 124),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 27, 125),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 28, 126),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 28, 127),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 29, 128),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 29, 129),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 30, 130),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 30, 131),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 31, 132),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 31, 133),
        r.MethodMirrorImpl(r'hashCode', 131075, 4, -1, 6, 6, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'', 0, 4, -1, 4, 4, null, const <int>[46, 47, 48],
            const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'==', 131074, 5, -1, 10, 10, null, const <int>[54],
            const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'toString', 131074, 5, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(r'isEqualNotNull', 131074, 5, -1, 10, 10, null,
            const <int>[55], const prefix0.Entity(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 32, 139),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 32, 140),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 33, 141),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 33, 142),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 34, 143),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 34, 144),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 35, 145),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 35, 146),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 36, 147),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 36, 148),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 37, 149),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 37, 150),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 38, 151),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 38, 152),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 39, 153),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 39, 154),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 40, 155),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 40, 156),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 41, 157),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 41, 158),
        r.ImplicitGetterMirrorImpl(const prefix0.Entity(), 42, 159),
        r.ImplicitSetterMirrorImpl(const prefix0.Entity(), 42, 160),
        r.MethodMirrorImpl(r'isDateOnly', 131075, 5, -1, 10, 10, null,
            const <int>[], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'amountFormat', 131075, 5, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'createdFormat', 131075, 5, -1, 7, 7, null,
            const <int>[], const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'namePay', 131075, 5, -1, 7, 7, null, const <int>[],
            const prefix0.Entity(), const []),
        r.MethodMirrorImpl(r'hashCode', 131075, 5, -1, 6, 6, null,
            const <int>[], const prefix0.Entity(), const <Object>[override]),
        r.MethodMirrorImpl(
            r'',
            0,
            5,
            -1,
            5,
            5,
            null,
            const <int>[56, 57, 58, 59, 60, 61, 62, 63, 64],
            const prefix0.Entity(),
            const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(r'other', 32774, 43, const prefix0.Entity(), -1,
            16, 16, null, const [], null, null),
        r.ParameterMirrorImpl(r'name', 36870, 55, const prefix0.Entity(), -1, 7,
            7, null, const [], null, null),
        r.ParameterMirrorImpl(r'ext', 36870, 55, const prefix0.Entity(), -1, 7,
            7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_id', 32870, 46, const prefix0.Entity(), -1, 6,
            6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_name', 32870, 48, const prefix0.Entity(), -1,
            7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_ext', 32870, 50, const prefix0.Entity(), -1, 7,
            7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_sync', 32870, 52, const prefix0.Entity(), -1,
            6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'invocation', 32774, 56, const prefix0.Entity(),
            -1, 17, 17, null, const [], null, null),
        r.ParameterMirrorImpl(r'other', 32774, 58, const prefix0.Entity(), -1,
            16, 16, null, const [], null, null),
        r.ParameterMirrorImpl(r'name', 36870, 82, const prefix0.Entity(), -1, 7,
            7, null, const [], null, null),
        r.ParameterMirrorImpl(r'currency', 36870, 82, const prefix0.Entity(), 0,
            0, 0, null, const [], null, null),
        r.ParameterMirrorImpl(r'type', 36870, 82, const prefix0.Entity(), -1, 6,
            6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_id', 32870, 61, const prefix0.Entity(), -1, 6,
            6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_name', 32870, 63, const prefix0.Entity(), -1,
            7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_description', 32870, 65,
            const prefix0.Entity(), -1, 7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_currency', 32870, 67, const prefix0.Entity(),
            0, 0, 0, null, const [], null, null),
        r.ParameterMirrorImpl(r'_type', 32870, 69, const prefix0.Entity(), -1,
            6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_isUseDebt', 32870, 71, const prefix0.Entity(),
            -1, 6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_closed', 32870, 73, const prefix0.Entity(), -1,
            8, 8, null, const [], null, null),
        r.ParameterMirrorImpl(r'_sync', 32870, 75, const prefix0.Entity(), -1,
            6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_rest', 32870, 77, const prefix0.Entity(), -1,
            9, 9, null, const [], null, null),
        r.ParameterMirrorImpl(r'accountType', 32774, 79, const prefix0.Entity(),
            -1, 13, 13, null, const [], null, null),
        r.ParameterMirrorImpl(r'other', 32774, 83, const prefix0.Entity(), -1,
            16, 16, null, const [], null, null),
        r.ParameterMirrorImpl(r'name', 36870, 103, const prefix0.Entity(), -1,
            7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'parent', 36870, 103, const prefix0.Entity(), 2,
            2, 2, null, const [], null, null),
        r.ParameterMirrorImpl(r'type', 36870, 103, const prefix0.Entity(), -1,
            6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_id', 32870, 86, const prefix0.Entity(), -1, 6,
            6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_name', 32870, 88, const prefix0.Entity(), -1,
            7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_parent', 32870, 90, const prefix0.Entity(), 2,
            2, 2, null, const [], null, null),
        r.ParameterMirrorImpl(r'_type', 32870, 92, const prefix0.Entity(), -1,
            6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_sync', 32870, 94, const prefix0.Entity(), -1,
            6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_image', 32870, 96, const prefix0.Entity(), -1,
            7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_turn', 32870, 98, const prefix0.Entity(), -1,
            9, 9, null, const [], null, null),
        r.ParameterMirrorImpl(r'categoryType', 32774, 100,
            const prefix0.Entity(), -1, 15, 15, null, const [], null, null),
        r.ParameterMirrorImpl(r'other', 32774, 104, const prefix0.Entity(), -1,
            16, 16, null, const [], null, null),
        r.ParameterMirrorImpl(r'name', 36870, 121, const prefix0.Entity(), -1,
            7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'parent', 36870, 121, const prefix0.Entity(), 3,
            3, 3, null, const [], null, null),
        r.ParameterMirrorImpl(r'description', 36870, 121,
            const prefix0.Entity(), -1, 7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_id', 32870, 107, const prefix0.Entity(), -1, 6,
            6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_name', 32870, 109, const prefix0.Entity(), -1,
            7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_parent', 32870, 111, const prefix0.Entity(), 3,
            3, 3, null, const [], null, null),
        r.ParameterMirrorImpl(r'_description', 32870, 113,
            const prefix0.Entity(), -1, 7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_sync', 32870, 115, const prefix0.Entity(), -1,
            6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_debt', 32870, 117, const prefix0.Entity(), -1,
            9, 9, null, const [], null, null),
        r.ParameterMirrorImpl(r'_credit', 32870, 119, const prefix0.Entity(),
            -1, 9, 9, null, const [], null, null),
        r.ParameterMirrorImpl(r'other', 32774, 122, const prefix0.Entity(), -1,
            16, 16, null, const [], null, null),
        r.ParameterMirrorImpl(r'name', 36870, 135, const prefix0.Entity(), -1,
            7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'parent', 36870, 135, const prefix0.Entity(), 4,
            4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'description', 36870, 135,
            const prefix0.Entity(), -1, 7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_id', 32870, 125, const prefix0.Entity(), -1, 6,
            6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_name', 32870, 127, const prefix0.Entity(), -1,
            7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_parent', 32870, 129, const prefix0.Entity(), 4,
            4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'_description', 32870, 131,
            const prefix0.Entity(), -1, 7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_sync', 32870, 133, const prefix0.Entity(), -1,
            6, 6, null, const [], null, null),
        r.ParameterMirrorImpl(r'other', 32774, 136, const prefix0.Entity(), -1,
            16, 16, null, const [], null, null),
        r.ParameterMirrorImpl(r'other', 32774, 138, const prefix0.Entity(), 5,
            5, 5, null, const [], null, null),
        r.ParameterMirrorImpl(r'account', 36870, 166, const prefix0.Entity(), 1,
            1, 1, null, const [], null, null),
        r.ParameterMirrorImpl(r'created', 36870, 166, const prefix0.Entity(),
            -1, 8, 8, null, const [], null, null),
        r.ParameterMirrorImpl(r'category', 36870, 166, const prefix0.Entity(),
            2, 2, 2, null, const [], null, null),
        r.ParameterMirrorImpl(r'amount', 36870, 166, const prefix0.Entity(), -1,
            9, 9, null, const [], null, null),
        r.ParameterMirrorImpl(r'accountTo', 36870, 166, const prefix0.Entity(),
            1, 1, 1, null, const [], null, null),
        r.ParameterMirrorImpl(r'person', 36870, 166, const prefix0.Entity(), 3,
            3, 3, null, const [], null, null),
        r.ParameterMirrorImpl(r'project', 36870, 166, const prefix0.Entity(), 4,
            4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'description', 36870, 166,
            const prefix0.Entity(), -1, 7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'amountTo', 36870, 166, const prefix0.Entity(),
            -1, 9, 9, null, const [], null, null),
        r.ParameterMirrorImpl(r'_id', 32870, 140, const prefix0.Entity(), -1, 6,
            6, null, const [], null, null),
        r.ParameterMirrorImpl(r'_account', 32870, 142, const prefix0.Entity(),
            1, 1, 1, null, const [], null, null),
        r.ParameterMirrorImpl(r'_created', 32870, 144, const prefix0.Entity(),
            -1, 8, 8, null, const [], null, null),
        r.ParameterMirrorImpl(r'_category', 32870, 146, const prefix0.Entity(),
            2, 2, 2, null, const [], null, null),
        r.ParameterMirrorImpl(r'_amount', 32870, 148, const prefix0.Entity(),
            -1, 9, 9, null, const [], null, null),
        r.ParameterMirrorImpl(r'_accountTo', 32870, 150, const prefix0.Entity(),
            1, 1, 1, null, const [], null, null),
        r.ParameterMirrorImpl(r'_person', 32870, 152, const prefix0.Entity(), 3,
            3, 3, null, const [], null, null),
        r.ParameterMirrorImpl(r'_project', 32870, 154, const prefix0.Entity(),
            4, 4, 4, null, const [], null, null),
        r.ParameterMirrorImpl(r'_description', 32870, 156,
            const prefix0.Entity(), -1, 7, 7, null, const [], null, null),
        r.ParameterMirrorImpl(r'_amountTo', 32870, 158, const prefix0.Entity(),
            -1, 9, 9, null, const [], null, null),
        r.ParameterMirrorImpl(r'_sync', 32870, 160, const prefix0.Entity(), -1,
            6, 6, null, const [], null, null)
      ],
      <Type>[
        prefix1.Currency,
        prefix1.Account,
        prefix1.Category,
        prefix1.Person,
        prefix1.Project,
        prefix1.Pay,
        int,
        String,
        DateTime,
        double,
        bool,
        prefix2.NumberFormat,
        Type,
        prefix1.AccountType,
        const m.TypeValue<void>().type,
        prefix1.CategoryType,
        Object,
        Invocation
      ],
      6,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'id': (dynamic instance) => instance.id,
        r'name': (dynamic instance) => instance.name,
        r'ext': (dynamic instance) => instance.ext,
        r'sync': (dynamic instance) => instance.sync,
        r'formatter': (dynamic instance) => instance.formatter,
        r'description': (dynamic instance) => instance.description,
        r'currency': (dynamic instance) => instance.currency,
        r'type': (dynamic instance) => instance.type,
        r'isUseDebt': (dynamic instance) => instance.isUseDebt,
        r'closed': (dynamic instance) => instance.closed,
        r'rest': (dynamic instance) => instance.rest,
        r'accountType': (dynamic instance) => instance.accountType,
        r'restFormat': (dynamic instance) => instance.restFormat,
        r'parent': (dynamic instance) => instance.parent,
        r'image': (dynamic instance) => instance.image,
        r'turn': (dynamic instance) => instance.turn,
        r'categoryType': (dynamic instance) => instance.categoryType,
        r'imageParent': (dynamic instance) => instance.imageParent,
        r'debt': (dynamic instance) => instance.debt,
        r'credit': (dynamic instance) => instance.credit,
        r'isEqualNotNull': (dynamic instance) => instance.isEqualNotNull,
        r'account': (dynamic instance) => instance.account,
        r'created': (dynamic instance) => instance.created,
        r'category': (dynamic instance) => instance.category,
        r'amount': (dynamic instance) => instance.amount,
        r'accountTo': (dynamic instance) => instance.accountTo,
        r'person': (dynamic instance) => instance.person,
        r'project': (dynamic instance) => instance.project,
        r'amountTo': (dynamic instance) => instance.amountTo,
        r'isDateOnly': (dynamic instance) => instance.isDateOnly,
        r'amountFormat': (dynamic instance) => instance.amountFormat,
        r'createdFormat': (dynamic instance) => instance.createdFormat,
        r'namePay': (dynamic instance) => instance.namePay
      },
      {
        r'id=': (dynamic instance, value) => instance.id = value,
        r'name=': (dynamic instance, value) => instance.name = value,
        r'ext=': (dynamic instance, value) => instance.ext = value,
        r'sync=': (dynamic instance, value) => instance.sync = value,
        r'description=': (dynamic instance, value) =>
            instance.description = value,
        r'currency=': (dynamic instance, value) => instance.currency = value,
        r'type=': (dynamic instance, value) => instance.type = value,
        r'isUseDebt=': (dynamic instance, value) => instance.isUseDebt = value,
        r'closed=': (dynamic instance, value) => instance.closed = value,
        r'rest=': (dynamic instance, value) => instance.rest = value,
        r'categoryType=': (dynamic instance, value) =>
            instance.categoryType = value,
        r'parent=': (dynamic instance, value) => instance.parent = value,
        r'image=': (dynamic instance, value) => instance.image = value,
        r'turn=': (dynamic instance, value) => instance.turn = value,
        r'debt=': (dynamic instance, value) => instance.debt = value,
        r'credit=': (dynamic instance, value) => instance.credit = value,
        r'account=': (dynamic instance, value) => instance.account = value,
        r'created=': (dynamic instance, value) => instance.created = value,
        r'category=': (dynamic instance, value) => instance.category = value,
        r'amount=': (dynamic instance, value) => instance.amount = value,
        r'accountTo=': (dynamic instance, value) => instance.accountTo = value,
        r'person=': (dynamic instance, value) => instance.person = value,
        r'project=': (dynamic instance, value) => instance.project = value,
        r'amountTo=': (dynamic instance, value) => instance.amountTo = value
      },
      null,
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
