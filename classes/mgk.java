public class mgk {
  public static String a(String paramString) {
    return (paramString != null && paramString.toLowerCase().contains("vendaval")) ? "VENDAVAL" : null;
  }
  
  @Deprecated
  public static String a(String paramString1, String paramString2) {
    return ((paramString1.equals("06") && paramString2.equals("002")) || (paramString1.equals("06") && paramString2.equals("023")) || (paramString1.equals("06") && paramString2.equals("118")) || (paramString1.equals("27") && paramString2.equals("001")) || (paramString1.equals("27") && paramString2.equals("021")) || (paramString1.equals("27") && paramString2.equals("031")) || (paramString1.equals("27") && paramString2.equals("102")) || (paramString1.equals("27") && paramString2.equals("107")) || (paramString1.equals("30") && paramString2.equals("104"))) ? "Desastres da Natureza" : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mgk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */