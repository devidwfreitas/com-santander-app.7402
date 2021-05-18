public class bho extends bhp {
  static final long a = 1L;
  
  private int c;
  
  private String d;
  
  public bho(String paramString1, int paramInt, String paramString2) {
    super(paramString1);
    this.c = paramInt;
    this.d = paramString2;
  }
  
  public int a() {
    return this.c;
  }
  
  public String b() {
    return this.d;
  }
  
  public final String toString() {
    return "{FacebookDialogException: " + "errorCode: " + a() + ", message: " + getMessage() + ", url: " + b() + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */