import java.io.Serializable;
import java.util.ArrayList;

public class igg extends gnd implements Serializable {
  @ekq
  @eks(a = "conditionDescription")
  private String a;
  
  @ekq
  @eks(a = "summaryDescription")
  private String b;
  
  @ekq
  @eks(a = "acceptOptionDescription")
  private String c;
  
  private String d;
  
  private ArrayList<gkx> e;
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(ArrayList<gkx> paramArrayList) {
    this.e = paramArrayList;
  }
  
  public String b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public String d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.b = paramString;
  }
  
  public ArrayList<gkx> e() {
    return this.e;
  }
  
  public void e(String paramString) {
    this.c = paramString;
  }
  
  public void f(String paramString) {
    this.d = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\igg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */