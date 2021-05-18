public enum ejf implements ejl {
  IDENTITY, LOWER_CASE_WITH_DASHES, LOWER_CASE_WITH_UNDERSCORES, UPPER_CAMEL_CASE, UPPER_CAMEL_CASE_WITH_SPACES;
  
  static {
    LOWER_CASE_WITH_UNDERSCORES = new ejj("LOWER_CASE_WITH_UNDERSCORES", 3);
    LOWER_CASE_WITH_DASHES = new ejk("LOWER_CASE_WITH_DASHES", 4);
    $VALUES = new ejf[] { IDENTITY, UPPER_CAMEL_CASE, UPPER_CAMEL_CASE_WITH_SPACES, LOWER_CASE_WITH_UNDERSCORES, LOWER_CASE_WITH_DASHES };
  }
  
  private static String modifyString(char paramChar, String paramString, int paramInt) {
    return (paramInt < paramString.length()) ? (paramChar + paramString.substring(paramInt)) : String.valueOf(paramChar);
  }
  
  static String separateCamelCase(String paramString1, String paramString2) {
    StringBuilder stringBuilder = new StringBuilder();
    for (int i = 0; i < paramString1.length(); i++) {
      char c = paramString1.charAt(i);
      if (Character.isUpperCase(c) && stringBuilder.length() != 0)
        stringBuilder.append(paramString2); 
      stringBuilder.append(c);
    } 
    return stringBuilder.toString();
  }
  
  static String upperCaseFirstLetter(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    int i = 0;
    char c = paramString.charAt(0);
    while (true) {
      if (i >= paramString.length() - 1 || Character.isLetter(c)) {
        if (i == paramString.length())
          return stringBuilder.toString(); 
      } else {
        stringBuilder.append(c);
        c = paramString.charAt(++i);
        continue;
      } 
      String str = paramString;
      return !Character.isUpperCase(c) ? stringBuilder.append(modifyString(Character.toUpperCase(c), paramString, i + 1)).toString() : str;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ejf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */