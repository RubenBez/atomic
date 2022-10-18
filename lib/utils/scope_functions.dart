
ReturnType run<ReturnType>(ReturnType Function() operation) {
  return operation();
}

extension ScopeFunctionsForObject<T extends Object> on T {
  ReturnType let<ReturnType>(ReturnType Function(T self) operationFor) {
    return operationFor(this);
  }

  T also(void Function(T self) operationFor) {
    operationFor(this);
    return this;
  }

  T? takeIf(bool Function(T self) predicate) {
    return (predicate(this)) ? this : null;
  }

  T? takeUnless(bool Function(T self) predicate) {
    return (!predicate(this)) ? this : null;
  }
}