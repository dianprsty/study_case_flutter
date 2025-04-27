abstract class Usecase<R, P> {
  Future<R> call(P params);
}
