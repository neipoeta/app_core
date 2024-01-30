sealed class Either<L, R> {}

class Left<L, R> extends Either<L, R> {
  final L value;
  Left(this.value);
}

class Right<L, R> extends Either<L, R> {
  final R value;
  Right(this.value);
}

  // Either._();

  // factory Either.left(L value) = Left<L, R>;

  // factory Either.right(R value) = Right<L, R>;

  // bool get isLeft;

  // bool get isRight;

  // Either<L, R> map<L2, R2>(Either<L2, R2> Function(L value) left,
  //     Either<L2, R2> Function(R value) right);

  // Either<L, R2> mapRight<R2>(R2 Function(R value) f);

  // Either<L2, R> mapLeft<L2>(L2 Function(L value) f);

  // Either<L, R2> flatMapRight<R2>(Either<L, R2> Function(R value) f);

  // Either<L2, R> flatMapLeft<L2>(Either<L2, R> Function(L value) f);

  // Either<L, R2> andThen<R2>(Either<L, R2> Function() f);

  // Either<L, R2> andThenRight<R2>(Either<L, R2> Function() f);

  // Either<L, R2> andThenLeft<R2>(Either<L, R2> Function() f);

  // Either<L, R2> andThenFlatMapRight<R2>(Either<L, R2> Function() f);

  // Either<L, R2> andThenFlatMapLeft<R2>(Either<L, R2> Function() f);

  // Either<L, R> orElse(Either<L, R> Function() f);

  // Either<L, R> orElseRight(Either<L, R> Function() f);

  // Either<L, R> orElseLeft(Either<L, R> Function() f);

  // Either<L, R> orElseFlatMapRight(Either<L, R> Function() f);

  // Either<L, R> orElseFlatMapLeft(Either<L, R> Function() f);

  // Either<L, R> orElseMapRight(Either<L, R> Function() f);

  // Either<L, R> orElseMapLeft(Either<L, R> Function() f);

  // Either<L, R> orElseMapRightFlatMap(Either<L, R> Function() f);

  // Either<L, R> orElseMapLeftFlatMap(Either<L, R> Function() f);

  // Either<L, R> orElseMapRightFlatMapLeft(Either<L, R> Function() f);

  // Either<L, R> orElseMapLeftFlatMapRight(Either<L, R> Function() f);
