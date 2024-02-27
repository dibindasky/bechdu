class ApiEndPoints {
  static String number = '';
  static const String baseUrl = 'https://bechdu-main-backend.onrender.com/';
  static const String login = 'user/login';
  static const String cityNames = 'pincode/cityNames';
  static const String pinCodes = 'pincode/city/{location}/pincodes';
  static const String cityNameChange = 'user/users/{number}/city';
  static const String picodeChange = 'user/users/{number}/pincode';
  static const String cityChange = 'user/users/8105823389/city';
  static const String getAllCategory = 'api/category/get-all-categories';
  static const String getsingleCategoryBrands = 'api/brand/brands-category/';
  static const String getProducts = 'product/get-products/';
  static const String getSeries = 'api/brand/series/';
  static const String getModels = 'api/brand/models/';
  static const String getVarients = 'api/brand/variants/';
  static const String getquestions = 'api/category/fetch-category-name';
  static const String baseUrlImagePath =
      'https://bechdu-main-backend.onrender.com/uploads/';
  static const String getBasePrice = 'product/calculate-price';
  static const String getPromoCode = 'promo/check/promocode';
  static const String abandendOrder = 'abundant/create-order';
  static const String addAddress = 'user/users/add-address';
  static const String deleteAddress =
      'user/users/delete-address/{number}/{index}';
  static const String getUserInfo = 'user/get-user-info/{number}';
  static const String orderPlacing = 'order/create-order';
}
