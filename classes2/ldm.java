public class ldm {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  public ldm(String paramString1, String paramString2, String paramString3, String paramString4) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
  }
  
  public String a() {
    return this.a;
  }
  
  public boolean b() {
    return (this.b != null);
  }
  
  public String c() {
    return this.b;
  }
  
  public boolean d() {
    return (this.c != null);
  }
  
  public String e() {
    return this.c;
  }
  
  public String f() {
    return this.d;
  }
  
  public String toString() {
    return (new ejm()).b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ldm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */