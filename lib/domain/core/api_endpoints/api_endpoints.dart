class ApiEndPoints {
  static const String baseUrl = 'https://bechdu-main-backend.onrender.com/';
  static const String sendOTP = 'user/send-sms';
  static const String verifyOTP = 'user/sms-login';
  static const String getCityNames = 'pincode/cityNames';
  static const String getPinCodes = 'pincode/city/{location}/pincodes';
  static const String cityUpdate = 'user/users/{number}/city';
  static const String picodeUpdate = 'user/users/{number}/pincode';
  static const String getBestSellingProducts =
      'product/best-selling-products/mobile';
  static const String globalProductSearch = 'product/get-all-products';
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
  static const String updateUserInfo = 'user/save-user/{number}';
  static const String orderPlacing = 'order/create-order';
  static const String getOrders = 'order/get-user-order/{number}';
  static const String orderCancel = 'order/{order_id}/user-cancel';
  static const String homePageBanners = 'dynamic/mobile/getHomePage';
  static const String dateTime = 'dynamic/calendar/next-10-days';
  static const String invoiceDownLoad =
      'order/generate-invoice/{number}/{order_id}';
  static const String deleteAccount = 'user/account-deletion';
}
