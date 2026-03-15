import 'package:dio/dio.dart';
import '../models/product.dart';

class ApiService {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://fakestoreapi.com",
      responseType: ResponseType.json,
    ),
  );

  Future<List<Product>> fetchProducts() async {
    try {
      final response = await dio.get("/products");

      // print(response.data);

      if (response.data == null) {
        throw Exception("API returned null");
      }

      if (response.data is! List) {
        throw Exception("Unexpected API format");
      }

      final List data = response.data;

      return data.map((e) => Product.fromJson(e)).toList();
    } on DioException catch (e) {
      // print("Dio error: ${e.message}");
      throw Exception("Failed to load products");
    }
  }
}
