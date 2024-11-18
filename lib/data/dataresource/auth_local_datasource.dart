class AuthLocalDatasource{

  future<void> saveAuthData(AuthResponseModel authResponseModel) async{
    final prefs = await SharedPreferences.getInstance();
    final prefs.setString('auth_data', authResponseModel.toJson());
  }

  future<void> removeAuthData() async{
    final prefs = await SharedPreferences.getInstance();
    final prefs.remove('auth_data');
  }

  future<AuthResponseModel> removeAuthData() async{
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');
    return AuthResponseModel.fromJson(authData!);
  }

  future<bool> isAuthData() async(
  final prefs = await SharedPreferences.getInstance();
  final authDataUser = prefs.getString('auth_data');
  return authDataUser != null;


}