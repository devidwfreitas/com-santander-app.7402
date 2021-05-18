import android.text.TextUtils;
import java.util.Date;

public class ktv {
  @eks(a = "neighborhood")
  private String a;
  
  @eks(a = "cep")
  private String b;
  
  @eks(a = "city")
  private String c;
  
  @eks(a = "complement")
  private String d;
  
  @eks(a = "passportCpf")
  private String e;
  
  @eks(a = "birthDate")
  private Date f;
  
  @eks(a = "address")
  private String g;
  
  @eks(a = "state")
  private String h;
  
  @eks(a = "name")
  private String i;
  
  public String a() {
    return TextUtils.isEmpty(this.a) ? "" : this.a.trim();
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(Date paramDate) {
    this.f = paramDate;
  }
  
  public String b() {
    return TextUtils.isEmpty(this.b) ? "" : this.b.trim();
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return TextUtils.isEmpty(this.c) ? "" : this.c.trim();
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public String d() {
    return TextUtils.isEmpty(this.d) ? "" : this.d.trim();
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public String e() {
    return TextUtils.isEmpty(this.e) ? "" : this.e.trim();
  }
  
  public void e(String paramString) {
    this.e = paramString;
  }
  
  public Date f() {
    return this.f;
  }
  
  public void f(String paramString) {
    this.g = paramString;
  }
  
  public String g() {
    return TextUtils.isEmpty(this.g) ? "" : this.g.trim();
  }
  
  public void g(String paramString) {
    this.h = paramString;
  }
  
  public String h() {
    return TextUtils.isEmpty(this.h) ? "" : this.h.trim();
  }
  
  public void h(String paramString) {
    this.i = paramString;
  }
  
  public String i() {
    return TextUtils.isEmpty(this.i) ? "" : this.i.trim();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ktv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */