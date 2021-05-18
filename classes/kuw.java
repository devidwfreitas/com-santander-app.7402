public class kuw extends kus {
  @eks(a = "documentCode")
  private String a;
  
  @eks(a = "documentDescription")
  private String b;
  
  @eks(a = "statusDocument")
  private String c;
  
  @eks(a = "statusDocumentDescription")
  private String d;
  
  @eks(a = "dateStatus")
  private String e;
  
  @eks(a = "refusalCode")
  private String f;
  
  @eks(a = "refusalDescription")
  private String g;
  
  public boolean a(String... paramVarArgs) {
    boolean bool = false;
    int j = paramVarArgs.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (paramVarArgs[i].toUpperCase().equals(mhj.x(this.c).toUpperCase()))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public void c(String paramString) {
    this.a = paramString;
  }
  
  public void d(String paramString) {
    this.b = paramString;
  }
  
  public String e() {
    return this.a;
  }
  
  public void e(String paramString) {
    this.c = paramString;
  }
  
  public String f() {
    return this.b;
  }
  
  public void f(String paramString) {
    this.d = paramString;
  }
  
  public String g() {
    return this.c;
  }
  
  public void g(String paramString) {
    this.e = paramString;
  }
  
  public String h() {
    return this.d;
  }
  
  public void h(String paramString) {
    this.f = paramString;
  }
  
  public String i() {
    return this.e;
  }
  
  public void i(String paramString) {
    this.g = paramString;
  }
  
  public String j() {
    return this.f;
  }
  
  public String k() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kuw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */