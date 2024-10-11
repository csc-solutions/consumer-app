class Config {
  static String getBaseUrl() {
    return "https://easyrecharge.stylesarl.com/api";
  }

  static String supportNumber() {
    return "+237650675795";
  }

  /// Retourne la clé utilisée pour sauvegarder le X-CLIENT-SESSION, s'il existe dans les shared_preferences
  static String getXClientSessionKey() {
    return "X-CLIENT-SESSION";
  }
}
