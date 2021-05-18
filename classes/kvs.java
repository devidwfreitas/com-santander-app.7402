import android.text.TextUtils;
import java.util.Date;
import java.util.List;

public class kvs {
  @eks(a = "lossStatus")
  private String a;
  
  @eks(a = "description")
  private String b;
  
  @eks(a = "descriptionDocument")
  private String c;
  
  @eks(a = "date")
  private Date d;
  
  @eks(a = "hour")
  private String e;
  
  @eks(a = "documents")
  private List<kwk> f;
  
  public List<kwk> a() {
    return this.f;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(Date paramDate) {
    this.d = paramDate;
  }
  
  public void a(List<kwk> paramList) {
    this.f = paramList;
  }
  
  public Date b() {
    return (this.d != null && !TextUtils.isEmpty(this.e)) ? mhj.a(String.format("%s%s", new Object[] { mhj.a(this.d, "dd/MM/yyyy"), this.e }), "dd/MM/yyyyHH:mm:ss") : this.d;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return nab.a().c(this.a);
  }
  
  public void c(String paramString) {
    this.e = paramString;
  }
  
  public String d() {
    return nab.a().c(this.b);
  }
  
  public void d(String paramString) {
    this.c = paramString;
  }
  
  public Date e() {
    return this.d;
  }
  
  public String f() {
    return this.e;
  }
  
  public String g() {
    return (TextUtils.isEmpty(d()) || d().length() < 3) ? "" : d().substring(0, 3);
  }
  
  public String h() {
    return d().replace(g(), "").replace("-", "").trim();
  }
  
  public String i() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kvs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */