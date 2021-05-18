import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class gev implements Serializable {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private boolean e;
  
  private boolean f;
  
  private boolean g;
  
  private List<gex> h = new ArrayList<gex>();
  
  private gfg i;
  
  public gev() {}
  
  public gev(String paramString1, String paramString2) {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public gev(String paramString1, String paramString2, boolean paramBoolean) {
    this.a = paramString1;
    this.b = paramString2;
    this.e = paramBoolean;
  }
  
  public gev(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2) {
    this.a = paramString1;
    this.b = paramString2;
    this.e = paramBoolean1;
    this.f = paramBoolean2;
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(gfg paramgfg) {
    this.i = paramgfg;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<gex> paramList) {
    this.h = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public gfg c() {
    return this.i;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public void c(boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public boolean d() {
    return this.e;
  }
  
  public List<gex> e() {
    return this.h;
  }
  
  public boolean f() {
    return this.f;
  }
  
  public boolean g() {
    return this.g;
  }
  
  public String h() {
    return this.c;
  }
  
  public String i() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */