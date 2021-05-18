public final class nmd {
  public static <T> T a(T paramT) {
    if (paramT == null)
      throw new NullPointerException(); 
    return paramT;
  }
  
  public static <T> T a(T paramT, String paramString) {
    if (paramT == null)
      throw new NullPointerException(paramString); 
    return paramT;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nmd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */