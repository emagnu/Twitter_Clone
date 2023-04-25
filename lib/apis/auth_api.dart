// Import LIBRARIES FILES PARTS PROVIDERS
//
// Import LIBRARIES
// import 'package:flutter/material.dart';
// import 'package:fpdart/fpdart.dart';
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as model;
// Import FILES
// import '../core/type_defs.dart';
import '../core/core.dart';

//
// Signing up or getting the user-account we'll use -> Account
// Accessing user related data we'll use -> model.Account now User
//

abstract class IAuthAPI {
  // Future<Either<String, Account>> SignUp({required String email, required String password,})
  FutureEither<Account> signUp({
    required String email,
    required String password,
  });
}

class AuthAPI implements IAuthAPI {
final Account _account;
AuthAPI({required Account account}) : _account = account;

@override
  FutureEither<model.User> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final account = await _account.create(userId: ID.unique(), // or use different sintax: 'unique()', 
      email: email, password: password,);
      return right(account);
    } catch (e, stackTrace) {return left(Failure(e.toString(), stackTrace),);
      
    }
  };


}
