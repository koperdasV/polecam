import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/profile/account/model/account_model.dart';

mixin IAccountRepo {
  Future<AccountModel> fetchDetails();
}

class AccountRepository implements IAccountRepo {
  @override
  Future<AccountModel> fetchDetails() async {
    final response = await rootBundle.loadString('assets/me.json');
    final json = await jsonDecode(response);
    final accountModel = AccountModel.fromJson(json as Map<String, dynamic>);
    return accountModel;
  }
}
