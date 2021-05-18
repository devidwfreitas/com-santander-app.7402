import java.util.ArrayList;
import java.util.List;

public class acc extends abv implements abx {
  @ekq
  @eks(a = "label")
  private String a;
  
  @ekq
  @eks(a = "value")
  private String b;
  
  @ekq
  @eks(a = "code")
  private String c;
  
  @ekq
  @eks(a = "values")
  private List<acd> d = new ArrayList<acd>();
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<acd> paramList) {
    this.d = paramList;
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
  
  public List<acd> d() {
    return this.d;
  }
  
  public boolean equals(Object paramObject) {
    try {
      paramObject = paramObject;
      if (paramObject == null)
        return false; 
      if (paramObject.c() == null) {
        if (c() == null)
          return true; 
      } else {
        return paramObject.c().equals(c());
      } 
    } catch (Exception exception) {}
    return false;
  }
  
  public void f() {}
  
  public void g() {
    this.b = n(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\acc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */