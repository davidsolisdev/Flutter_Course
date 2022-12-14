import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RespFetch<T> {
  final int status;
  final T? data;
  const RespFetch({this.status = 1000, this.data});
}

class Fetcher {
  static final Map<String, String> _headders = {
    "Content-Type": "application/json",
  };

  static Future<RespFetch<T>> get<T>(Uri url,
      {Map<String, String>? headers, dynamic maper}) async {
    final http.Response peticionGet =
        await http.get(url, headers: _getHeaders(headers));

    return _compStatus(peticionGet, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> post<T>(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    dynamic maper,
    Encoding? encoding,
  }) async {
    final http.Response peticionPost = await http.post(
      url,
      headers: _getHeaders(headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionPost, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> put<T>(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    dynamic maper,
    Encoding? encoding,
  }) async {
    final http.Response peticionPut = await http.put(
      url,
      headers: _getHeaders(headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionPut, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> patch<T>(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    dynamic maper,
    Encoding? encoding,
  }) async {
    final http.Response peticionPatch = await http.patch(
      url,
      headers: _getHeaders(headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionPatch, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> delete<T>(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    dynamic maper,
    Encoding? encoding,
  }) async {
    final http.Response peticionDelete = await http.delete(
      url,
      headers: _getHeaders(headers),
      body: body,
      encoding: encoding,
    );

    return _compStatus(peticionDelete, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> postMultipart<T>(
    Uri url, {
    Map<String, String>? headers,
    Map<String, String>? body,
    required List<String> filesPaths,
    dynamic maper,
    Encoding? encoding,
  }) async {
    http.MultipartRequest request = http.MultipartRequest('POST', url);
    if (headers != null) request.headers.addAll(headers);
    if (body != null) request.fields.addAll(body);
    for (var i = 0; i < filesPaths.length; i++) {
      request.files.add(
        http.MultipartFile(
          'archivo$i',
          File(filesPaths[i]).readAsBytes().asStream(),
          File(filesPaths[i]).lengthSync(),
          filename: filesPaths[i].split("/").last,
        ),
      );
    }

    http.StreamedResponse resp = await request.send();
    http.Response peticionPost =
        http.Response(resp.stream.toString(), resp.statusCode);

    return _compStatus(peticionPost, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> putMultipart<T>(
    Uri url, {
    Map<String, String>? headers,
    Map<String, String>? body,
    required List<String> filesPaths,
    dynamic maper,
    Encoding? encoding,
  }) async {
    http.MultipartRequest request = http.MultipartRequest('PUT', url);
    if (headers != null) request.headers.addAll(headers);
    if (body != null) request.fields.addAll(body);
    for (var i = 0; i < filesPaths.length; i++) {
      request.files.add(
        http.MultipartFile(
          'archivo$i',
          File(filesPaths[i]).readAsBytes().asStream(),
          File(filesPaths[i]).lengthSync(),
          filename: filesPaths[i].split("/").last,
        ),
      );
    }

    http.StreamedResponse resp = await request.send();
    http.Response peticionPost =
        http.Response(resp.stream.toString(), resp.statusCode);

    return _compStatus(peticionPost, maper) as RespFetch<T>;
  }

  static Future<RespFetch<T>> patchMultipart<T>(
    Uri url, {
    Map<String, String>? headers,
    Map<String, String>? body,
    required List<String> filesPaths,
    dynamic maper,
    Encoding? encoding,
  }) async {
    http.MultipartRequest request = http.MultipartRequest('PATCH', url);
    if (headers != null) request.headers.addAll(headers);
    if (body != null) request.fields.addAll(body);
    for (var i = 0; i < filesPaths.length; i++) {
      request.files.add(
        http.MultipartFile(
          'archivo$i',
          File(filesPaths[i]).readAsBytes().asStream(),
          File(filesPaths[i]).lengthSync(),
          filename: filesPaths[i].split("/").last,
        ),
      );
    }

    http.StreamedResponse resp = await request.send();
    http.Response peticionPost =
        http.Response(resp.stream.toString(), resp.statusCode);

    return _compStatus(peticionPost, maper) as RespFetch<T>;
  }

  static Map<String, String> _getHeaders(Map<String, String>? user) {
    if (user == null || user.isEmpty) return _headders;

    final List<String> localHeaderkeys =
        _headders.entries.map((p) => p.key.toLowerCase()).toList();
    final List<String> userHeaderKeys =
        user.entries.map((p) => p.key.toLowerCase()).toList();

    for (var localHeader in localHeaderkeys) {
      if (!userHeaderKeys.contains(localHeader)) {
        user.addAll({localHeader: _headders[localHeader]!});
      }
    }
    return user;
  }

  static RespFetch _compStatus(http.Response peticion, dynamic Maper) {
    RespFetch respuesta;

    try {
      final dynamic data = jsonDecode(peticion.body);

      try {
        Maper == null
            ? respuesta = RespFetch(status: peticion.statusCode, data: data)
            : respuesta =
                RespFetch(status: peticion.statusCode, data: Maper(data));
      } catch (err) {
        const String msg =
            "Los datos recibidos no pueden ser convertidos a objetos de tipo 'Maper'";
        respuesta = const RespFetch(status: 1000, data: msg);
      }
    } catch (e) {
      respuesta = RespFetch(status: peticion.statusCode, data: peticion.body);
    }
    return respuesta;
  }
}
