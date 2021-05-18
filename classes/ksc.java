public class ksc {
  @eks(a = "product")
  private kse a;
  
  @eks(a = "managementBranch")
  private String b;
  
  @eks(a = "number")
  private String c;
  
  @eks(a = "accountCard")
  private String d;
  
  @eks(a = "contractNumber")
  private String e;
  
  public kse a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(kse paramkse) {
    this.a = paramkse;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.d = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.e = paramString;
  }
  
  public String d() {
    return this.d;
  }
  
  public String e() {
    return this.e;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof ksc))
        return false; 
      paramObject = paramObject;
      if (c() != null)
        return c().equals(paramObject.c()); 
      if (paramObject.c() != null)
        return false; 
    } 
    return true;
  }
  
  public String f() {
    String str = c();
    return String.format("XXXX.XXXX.XXXX.%s", new Object[] { str.substring(str.length() - 4) });
  }
  
  public int hashCode() {
    return (c() != null) ? c().hashCode() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ksc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */