// Import LIBRARIES FILES PARTS PROVIDERS
//
// Import LIBRARIES
import 'package:fpdart/fpdart.dart';
// Import FILES
import '../core/failure.dart';
//
//

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef FutureEitherVoid = FutureEither<void>;
typedef FutureVoid = Future<void>;
