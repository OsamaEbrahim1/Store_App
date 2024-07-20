
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
//get category
class CtegoriesService
{
  Future<List<dynamic>> getCategoriesProducts({required String categoryName})async
  {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(url: 'https://fakestoreapi.com/products/category/${categoryName}');
    List<ProductModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return data;
    }
  }
