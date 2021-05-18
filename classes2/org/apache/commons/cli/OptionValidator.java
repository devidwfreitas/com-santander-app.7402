package org.apache.commons.cli;

class OptionValidator {
  private static boolean isValidChar(char paramChar) {
    return Character.isJavaIdentifierPart(paramChar);
  }
  
  private static boolean isValidOpt(char paramChar) {
    return (isValidChar(paramChar) || paramChar == ' ' || paramChar == '?' || paramChar == '@');
  }
  
  static void validateOption(String paramString) {
    int i = 0;
    if (paramString != null) {
      if (paramString.length() == 1) {
        char c = paramString.charAt(0);
        if (!isValidOpt(c))
          throw new IllegalArgumentException("illegal option value '" + c + "'"); 
        return;
      } 
      char[] arrayOfChar = paramString.toCharArray();
      while (true) {
        if (i < arrayOfChar.length) {
          if (!isValidChar(arrayOfChar[i]))
            throw new IllegalArgumentException("opt contains illegal character value '" + arrayOfChar[i] + "'"); 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\OptionValidator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */