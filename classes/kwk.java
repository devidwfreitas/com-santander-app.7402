public class kwk {
  @eks(a = "id")
  private Integer a;
  
  @eks(a = "documentType")
  private String b;
  
  @eks(a = "documentName")
  private String c;
  
  @eks(a = "documentStatus")
  private kuw d;
  
  @eks(a = "hide")
  private boolean e;
  
  public void a(int paramInt) {
    this.a = Integer.valueOf(paramInt);
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(kuw paramkuw) {
    this.d = paramkuw;
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public boolean a() {
    return (this.d != null && this.d.a(new String[] { "E", "X" }));
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public boolean b() {
    return (this.d != null && this.d.a(new String[] { "R", "Z" }));
  }
  
  public boolean c() {
    return this.e;
  }
  
  public kuw d() {
    return this.d;
  }
  
  public Integer e() {
    return (this.a == null) ? Integer.valueOf(-1) : this.a;
  }
  
  public String f() {
    return this.b;
  }
  
  public String g() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kwk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */