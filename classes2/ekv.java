public final class ekv {
  private ekv() {
    throw new UnsupportedOperationException();
  }
  
  public static <T> T a(T paramT) {
    if (paramT == null)
      throw new NullPointerException(); 
    return paramT;
  }
  
  public static void a(boolean paramBoolean) {
    if (!paramBoolean)
      throw new IllegalArgumentException(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ekv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */