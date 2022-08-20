// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:instagram/constant/constants.dart';
// import 'package:instagram/model/user_model.dart';
// // import 'package:shopping/models/product.dart';

// class ProductService {
//   String collection = "users";

//   Future<List<UserModel>> getFeaturedProducts() {
//     db.collection(collection).get().then((snap) {
//       List<UserModel> featuredProducts = [];
//       snap.docs.map(
//           (snapshot) => featuredProducts.add(UserModel.fromJson(snapshot)));
//       return featuredProducts;
//     });
//   }
// }
