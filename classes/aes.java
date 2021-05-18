public class aes {
  public static String a(String paramString) {
    return paramString.substring(0, 2) + "." + paramString.substring(2, 5) + "." + paramString.substring(5, 8) + "/" + paramString.substring(8, 12) + "-" + paramString.substring(12, paramString.length());
  }
  
  public static String b(String paramString) {
    return paramString.substring(0, 5) + "-" + paramString.substring(5, paramString.length());
  }
  
  public static String c(String paramString) {
    return paramString.substring(0, 3) + "." + paramString.substring(3, 6) + "." + paramString.substring(6, 9) + "-" + paramString.substring(9, paramString.length());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aes.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */