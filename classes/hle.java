import java.util.Calendar;

public class hle implements hlh {
  @eks(a = "status")
  private String a;
  
  @eks(a = "cancelDate")
  private String b;
  
  @eks(a = "bankAutentication")
  private String c;
  
  @eks(a = "code")
  private String d;
  
  @eks(a = "message")
  private String e;
  
  public String b() {
    return (this.c != null) ? this.c : "";
  }
  
  public String c() {
    return (this.a != null) ? this.a : "";
  }
  
  public String d() {
    return (this.d != null) ? this.d : "";
  }
  
  public String e() {
    return (this.e != null) ? this.e : "";
  }
  
  public String f() {
    return "";
  }
  
  public String getDataHoraTransacao() {
    try {
      Calendar calendar = hyx.d(this.b);
      return hyx.c("dd/MM/yyyy - HH:mm").format(calendar.getTime());
    } catch (Exception exception) {
      return "";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\hle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */