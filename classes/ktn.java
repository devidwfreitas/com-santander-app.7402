public class ktn {
  @eks(a = "id")
  private Integer a;
  
  @eks(a = "title")
  private String b;
  
  @eks(a = "description")
  private String c;
  
  private boolean d;
  
  public ktn() {}
  
  public ktn(Integer paramInteger) {
    this.a = paramInteger;
  }
  
  public void a(Integer paramInteger) {
    this.a = paramInteger;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public boolean a() {
    return this.d;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public ktn d() {
    ktn ktn1 = new ktn();
    ktn1.a(this.b);
    ktn1.b(this.c);
    ktn1.a(this.d);
    ktn1.a(this.a);
    return ktn1;
  }
  
  public Integer e() {
    if (this.a == null) {
      byte b = -1;
      return Integer.valueOf(b);
    } 
    int i = this.a.intValue();
    return Integer.valueOf(i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ktn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */