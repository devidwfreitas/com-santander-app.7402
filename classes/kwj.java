public class kwj {
  @eks(a = "id")
  private Integer a;
  
  @eks(a = "documentType")
  private String b;
  
  @eks(a = "documentName")
  private String c;
  
  @eks(a = "createDate")
  private String d;
  
  public Integer a() {
    if (this.a != null) {
      int i = this.a.intValue();
      return Integer.valueOf(i);
    } 
    byte b = -1;
    return Integer.valueOf(b);
  }
  
  public void a(Integer paramInteger) {
    this.a = paramInteger;
  }
  
  public void a(String paramString) {
    this.b = paramString;
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
  
  public void c(String paramString) {
    this.d = paramString;
  }
  
  public String d() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kwj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */