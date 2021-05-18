public abstract class nfy {
  private final String a;
  
  public nfy(String paramString) {
    if (paramString == null || paramString.length() == 0)
      throw new IllegalArgumentException("id must be provided."); 
    this.a = paramString;
  }
  
  public final String b() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */