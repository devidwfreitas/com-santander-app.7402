public class gth {
  private String a;
  
  private Boolean b;
  
  private Boolean c;
  
  private int d;
  
  public gth(String paramString) {
    this.a = paramString;
    this.b = Boolean.valueOf(false);
    this.c = Boolean.valueOf(false);
    this.d = 14;
  }
  
  public gth(String paramString, Boolean paramBoolean1, Boolean paramBoolean2, int paramInt) {
    this.a = paramString;
    this.b = paramBoolean1;
    this.c = paramBoolean2;
    this.d = paramInt;
  }
  
  public int a() {
    return this.d;
  }
  
  public void a(int paramInt) {
    this.d = paramInt;
  }
  
  public void a(Boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public Boolean b() {
    return this.c;
  }
  
  public void b(Boolean paramBoolean) {
    this.b = paramBoolean;
  }
  
  public String c() {
    return this.a;
  }
  
  public Boolean d() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */