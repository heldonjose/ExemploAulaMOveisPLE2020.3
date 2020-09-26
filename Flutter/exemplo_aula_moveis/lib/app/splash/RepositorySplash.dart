import 'package:dio/dio.dart';
import 'package:exemplo_aula_moveis/shared/Urls.dart';

class RepositorySplash {
  Dio _dio;
  Response _response;

  RepositorySplash() {
    this._dio = Dio();
  }

  Future<bool> verificarDados() async {
    print('verificarDados');
    print(Urls.VERIFICAR_DADOS_SPLASH);

//    this._response = await this._dio.get(Urls.VERIFICAR_DADOS_SPLASH);
    Map<String, dynamic> cliente = {
      'nome': 'heldonjose',
      'contatos': [
        {'id': 2, 'tipo': 'Whatsapp', 'descricao': '83-9-9927-9632'},
        {'id': 3, 'tipo': 'facebook', 'descricao': 'heldonjose'}
      ]
    };

    this._response =
        await this._dio.post(Urls.VERIFICAR_DADOS_SPLASH, data: cliente);
    print(this._response);

    List empresas = this._response.data['empresas'];
    empresas.forEach((element) {
      print(element);
    });

    return this._response.data['flag'];
  }
}
