import android.text.TextUtils;
import java.util.Date;

public class knx {
  @eks(a = "paymentDate")
  private Date a;
  
  @eks(a = "dueDate")
  private Date b;
  
  @eks(a = "installment")
  private String c;
  
  @eks(a = "status")
  private String d;
  
  @eks(a = "value")
  private String e;
  
  @eks(a = "discountValue")
  private String f;
  
  @eks(a = "paidValue")
  private String g;
  
  public Date a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(Date paramDate) {
    this.a = paramDate;
  }
  
  public Date b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.d = paramString;
  }
  
  public void b(Date paramDate) {
    this.b = paramDate;
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
  
  public void d(String paramString) {
    this.f = paramString;
  }
  
  public String e() {
    return this.e;
  }
  
  public void e(String paramString) {
    this.g = paramString;
  }
  
  public String f() {
    return this.f;
  }
  
  public String g() {
    return TextUtils.isEmpty(this.g) ? "" : this.g.trim();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\knx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */