public abstract class des<T> {
  private static final Object c = new Object();
  
  private static dey d = null;
  
  private static int e = 0;
  
  private static String f = "com.google.android.providers.gsf.permission.READ_GSERVICES";
  
  protected final String a;
  
  protected final T b;
  
  private T g = null;
  
  protected des(String paramString, T paramT) {
    this.a = paramString;
    this.b = paramT;
  }
  
  public static des<Float> a(String paramString, Float paramFloat) {
    return new dew(paramString, paramFloat);
  }
  
  public static des<Integer> a(String paramString, Integer paramInteger) {
    return new dev(paramString, paramInteger);
  }
  
  public static des<Long> a(String paramString, Long paramLong) {
    return new deu(paramString, paramLong);
  }
  
  public static des<String> a(String paramString1, String paramString2) {
    return new dex(paramString1, paramString2);
  }
  
  public static des<Boolean> a(String paramString, boolean paramBoolean) {
    return new det(paramString, Boolean.valueOf(paramBoolean));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\des.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */