public class jrv {
  private String a = "";
  
  private String b = "";
  
  private int c;
  
  private int d;
  
  private int e;
  
  public jrv(int paramInt1, int paramInt2, int paramInt3) {
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
  }
  
  public jrv(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3) {
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(int paramInt) {
    this.c = paramInt;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(int paramInt) {
    this.d = paramInt;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public int c() {
    return this.c;
  }
  
  public void c(int paramInt) {
    this.e = paramInt;
  }
  
  public int d() {
    return this.d;
  }
  
  public int e() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jrv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */