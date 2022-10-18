class AppRoute {
  final String _path;
  final AppRoute? _parent;

  AppRoute(this._path, [this._parent]);

  String call([List<String> args= const []]) {
    final parentRoute = _parent?.call() ?? "";
    String path = parentRoute + _path;
    if (parentRoute == "/") {
      path = _path;
    }

    return path + args.map((e) => "/:$e").join("");
  }
}
