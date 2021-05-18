public class ivm {
  private static final String a = "0";
  
  private static final String b = "74900";
  
  private static final String c = "74008";
  
  private static final String d = "74106";
  
  private static final String e = "74011";
  
  private static final String f = "74607";
  
  private static final String g = "74609";
  
  private static final String h = "74030";
  
  private static final String i = "74058";
  
  private static final String j = "74605";
  
  private static final String k = "74006";
  
  private static final String l = "74328";
  
  private static final String m = "74001";
  
  private static final String n = "74005";
  
  private static final String o = "74039";
  
  private static final String p = "74110";
  
  private static final String q = "74100";
  
  private static final String r = "d1412";
  
  public static Boolean a(String paramString) {
    if (paramString != null && paramString.equals("0")) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
  
  public static Boolean b(String paramString) {
    if (paramString != null && (paramString.equals("74900") || paramString.equals("74008") || paramString.equals("74106") || paramString.equals("74011") || paramString.equals("74607") || paramString.equals("74609") || paramString.equals("74030") || paramString.equals("74058") || paramString.equals("d1412") || paramString.equals("74605"))) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
  
  public static Boolean c(String paramString) {
    if (paramString != null && (paramString.equals("74006") || paramString.equals("74328") || paramString.equals("74001") || paramString.equals("74005") || paramString.equals("74039") || paramString.equals("74110"))) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
  
  public static Boolean d(String paramString) {
    if (paramString != null && (paramString.equals("0") || paramString.equals("74100"))) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
  
  public static boolean e(String paramString) {
    return (paramString.equals("-1") || paramString.contains("falhaComunicacao") || paramString.equals("permissaoSms"));
  }
  
  public static boolean f(String paramString) {
    return paramString.equalsIgnoreCase("-4");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ivm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */