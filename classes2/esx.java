public abstract class esx {
  private final esy a;
  
  protected esx(esy paramesy) {
    this.a = paramesy;
  }
  
  public static void a(String paramString, StringBuilder paramStringBuilder) {
    if (paramString != null && !paramString.isEmpty()) {
      if (paramStringBuilder.length() > 0)
        paramStringBuilder.append('\n'); 
      paramStringBuilder.append(paramString);
    } 
  }
  
  public static void a(String[] paramArrayOfString, StringBuilder paramStringBuilder) {
    if (paramArrayOfString != null) {
      int j = paramArrayOfString.length;
      for (int i = 0; i < j; i++)
        a(paramArrayOfString[i], paramStringBuilder); 
    } 
  }
  
  public abstract String q();
  
  public final esy r() {
    return this.a;
  }
  
  public final String toString() {
    return q();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */