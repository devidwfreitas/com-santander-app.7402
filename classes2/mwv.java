public final class mwv {
  public static String a(String paramString) {
    String str = paramString;
    try {
      paramString = paramString.replaceAll("[^0-9]+", "");
      str = paramString;
      return paramString.substring(0, paramString.length() - 1) + "-" + paramString.substring(paramString.length() - 1, paramString.length());
    } catch (Exception exception) {
      return str;
    } 
  }
  
  public static String b(String paramString) {
    String str = paramString;
    try {
      paramString = paramString.replaceAll("[^0-9]+", "");
      str = paramString;
      return naq.h(paramString);
    } catch (Exception exception) {
      return str;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mwv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */