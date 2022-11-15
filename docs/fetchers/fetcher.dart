import 'package:http/http.dart' as http;
import 'dart:convert';

class ResFetch<T> {
  final int status;
  final T? data;
  const ResFetch({this.status = 1000, this.data});
}

class _Fetcher {
  final Map<String, String> _headders = {"Content-Type": "application/json"};

  Future<ResFetch<T>> get<T>(Uri url,
      {Map<String, String>? headers, dynamic maper}) async {
    final http.Response peticionGet =
        await http.get(url, headers: _getHeaders(_headders, headers));

    return _compStatus(peticionGet, maper) as ResFetch<T>;
  }

  Future<ResFetch<T>> post<T>(Uri url,
      {Map<String, String>? headers,
      Object? body,
      dynamic maper,
      Encoding? encoding}) async {
    final http.Response peticionPost = await http.post(
      url,
      headers: _getHeaders(_headders, headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionPost, maper) as ResFetch<T>;
  }

  Future<ResFetch<T>> put<T>(Uri url,
      {Map<String, String>? headers,
      Object? body,
      dynamic maper,
      Encoding? encoding}) async {
    final http.Response peticionPut = await http.put(
      url,
      headers: _getHeaders(_headders, headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionPut, maper) as ResFetch<T>;
  }

  Future<ResFetch<T>> patch<T>(Uri url,
      {Map<String, String>? headers,
      Object? body,
      dynamic maper,
      Encoding? encoding}) async {
    final http.Response peticionPatch = await http.patch(
      url,
      headers: _getHeaders(_headders, headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionPatch, maper) as ResFetch<T>;
  }

  Future<ResFetch<T>> delete<T>(Uri url,
      {Map<String, String>? headers,
      Object? body,
      dynamic maper,
      Encoding? encoding}) async {
    final http.Response peticionDelete = await http.delete(
      url,
      headers: _getHeaders(_headders, headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionDelete, maper) as ResFetch<T>;
  }

  Map<String, String> _getHeaders(
    Map<String, String> locals,
    Map<String, String>? user,
  ) {
    if (user != null && user.isNotEmpty) {
      final List<String> localHeaderkeys =
          locals.entries.map((p) => p.key).toList();
      final List<String> userHeaderKeys =
          user.entries.map((p) => p.key).toList();
      String keyBusqueda = '';

      for (var headUser in userHeaderKeys) {
        keyBusqueda = localHeaderkeys.firstWhere(
          (headLocal) =>
              headLocal.trim().toLowerCase() == headUser.trim().toLowerCase(),
          orElse: () => '',
        );

        if (keyBusqueda.trim().isNotEmpty) locals.remove(keyBusqueda);
      }

      return {...locals, ...user};
    } else {
      return locals;
    }
  }

  ResFetch _compStatus(http.Response peticion, dynamic Maper) {
    final int status = peticion.statusCode;
    ResFetch respuesta;

    try {
      if (Maper == null) {
        respuesta = ResFetch(status: status, data: jsonDecode(peticion.body));
      } else {
        final datos = jsonDecode(peticion.body);

        try {
          respuesta = ResFetch(status: status, data: Maper(datos));
        } catch (err) {
          respuesta = ResFetch(
            status: status,
            data:
                "Los datos recibidos no pueden ser convertidos a objetos de tipo 'Maper'",
          );
        }
      }
    } catch (e) {
      try {
        respuesta = ResFetch(status: status, data: peticion.body);
      } catch (error) {
        respuesta = ResFetch(status: status, data: error.toString());
      }
    }
    return respuesta;
  }
}

final Fetcher = _Fetcher();
