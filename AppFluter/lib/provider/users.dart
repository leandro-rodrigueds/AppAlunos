import 'package:flutter/material.dart';

class Users with ChangeNotifier{
  final Map<String, Usuario> _items = {...DUMMY_USER};

  List<Usuario> get all{
    return[..._items.values];
  }

  int get count {
    return _items.length;
  }

}
