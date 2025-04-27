sealed class Result<T> {
  const Result();

  const factory Result.success(T data) = Success<T>;
  const factory Result.failed(String message) = Failed<T>;

  bool get isSuccess => this is Success<T>;
  bool get isFailed => this is Failed<T>;

  T? get value => this is Success<T> ? (this as Success<T>).data : null;
  String? get errorMessage =>
      this is Failed<T> ? (this as Failed<T>).message : null;
}

class Success<T> extends Result<T> {
  final T data;
  const Success(this.data);
}

class Failed<T> extends Result<T> {
  final String message;
  const Failed(this.message);
}
