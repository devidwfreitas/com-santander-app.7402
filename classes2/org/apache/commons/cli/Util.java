package org.apache.commons.cli;

class Util {
  static String stripLeadingAndTrailingQuotes(String paramString) {
    String str = paramString;
    if (paramString.startsWith("\""))
      str = paramString.substring(1, paramString.length()); 
    paramString = str;
    if (str.endsWith("\""))
      paramString = str.substring(0, str.length() - 1); 
    return paramString;
  }
  
  static String stripLeadingHyphens(String paramString) {
    if (paramString == null)
      return null; 
    if (paramString.startsWith("--"))
      return paramString.substring(2, paramString.length()); 
    String str = paramString;
    return paramString.startsWith("-") ? paramString.substring(1, paramString.length()) : str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\cli\Util.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */