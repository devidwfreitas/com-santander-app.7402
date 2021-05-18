public class kqk {
  @eks(a = "customerCode")
  private String a;
  
  @eks(a = "number")
  private String b;
  
  @eks(a = "branchCode")
  private String c;
  
  @eks(a = "bankCode")
  private String d;
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public String d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public String e() {
    return "AG: " + c() + " C/C " + b();
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof kqk))
        return false; 
      paramObject = paramObject;
      if ((b() != null) ? !b().equals(paramObject.b()) : (paramObject.b() != null))
        return false; 
      if (d() != null)
        return d().equals(paramObject.d()); 
      if (paramObject.d() != null)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    byte b;
    int i = 0;
    if (b() != null) {
      b = b().hashCode();
    } else {
      b = 0;
    } 
    if (d() != null)
      i = d().hashCode(); 
    return b * 31 + i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kqk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */