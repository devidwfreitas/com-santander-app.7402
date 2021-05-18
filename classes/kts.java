import android.text.TextUtils;
import java.util.Date;

public class kts {
  @eks(a = "name")
  private String a;
  
  @eks(a = "certificateNumber")
  private String b;
  
  @eks(a = "startDate")
  private Date c;
  
  @eks(a = "endDate")
  private Date d;
  
  @eks(a = "paymentMethod")
  private String e;
  
  @eks(a = "policyNumber")
  private String f;
  
  @eks(a = "certificateKey")
  private String g;
  
  @eks(a = "enableCancel")
  private String h;
  
  @eks(a = "cancelation")
  private String i;
  
  public String a() {
    return this.h;
  }
  
  public void a(String paramString) {
    this.h = paramString;
  }
  
  public String b() {
    return this.i;
  }
  
  public void b(String paramString) {
    this.i = paramString;
  }
  
  public String c() {
    return TextUtils.isEmpty(this.f) ? "" : this.f.trim();
  }
  
  public String d() {
    return TextUtils.isEmpty(this.a) ? "" : this.a.trim();
  }
  
  public String e() {
    return TextUtils.isEmpty(this.b) ? "" : this.b.trim();
  }
  
  public Date f() {
    return this.c;
  }
  
  public Date g() {
    return this.d;
  }
  
  public String h() {
    return TextUtils.isEmpty(this.e) ? "" : this.e.trim();
  }
  
  public String i() {
    return TextUtils.isEmpty(this.g) ? "" : this.g.trim();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kts.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */