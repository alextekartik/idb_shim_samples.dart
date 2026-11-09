## Simple todo app using idb_shim

A small todo list stored in IndexedDB through
[idb_shim](https://pub.dev/packages/idb_shim). It is a Dart port of the
"A Simple TODO list using HTML5 IndexedDB" article by Paul Kinlan, once
published on HTML5Rocks.

### Run it

From the `tutorial_todo` folder:

```sh
dart pub get
dart run build_runner serve web:8080
```

then open http://localhost:8080 in a browser.

The links at the top of the page choose the idb_shim factory
(`?idb_factory=<name>`): `browser`, `native` and `persistent` use the
browser IndexedDB, `memory` keeps the todos in memory (lost on reload).

### What it shows

- `idbFactory.open` with `onUpgradeNeeded` creating the `todos` store
  (key path `timeStamp`).
- `put`, `delete` and a cursor (`openCursor(autoAdvance: true)`) in
  transactions, the list refreshed after each change.
- `getIdbFactory(name)` to pick a factory by name.

`test/todo_test.dart` (`dart test -p chrome`) checks the factory of each link.
