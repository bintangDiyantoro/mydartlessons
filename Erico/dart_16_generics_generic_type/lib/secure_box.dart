// T is the generic type

class SecureBox<T> {
  final T _data;
  final String _key;

  SecureBox(this._data, this._key);

  T getData(String key) => (key == _key) ? _data : null;
}
