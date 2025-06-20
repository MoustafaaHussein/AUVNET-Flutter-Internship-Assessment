import 'package:auvnet_ecommerce/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param, secParamter> {
  Future<Either<Failure, Type>> call([
    Param parameter,
    secParamter secondParamter,
  ]);
}

class NoParameter {}
