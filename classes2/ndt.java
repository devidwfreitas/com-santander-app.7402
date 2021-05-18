import android.app.Activity;
import java.util.ArrayList;

public class ndt implements nds {
  private ncy a;
  
  private nbd b;
  
  public ndt(ncy paramncy, Activity paramActivity) {
    this.a = paramncy;
    this.b = new nbe(this, paramActivity);
  }
  
  public void a() {
    this.b.a();
  }
  
  public void a(String paramString) {
    this.b.a(paramString);
  }
  
  public void a(String paramString, ArrayList<gky> paramArrayList) {
    this.a.a(paramString, paramArrayList);
  }
  
  public void b() {
    this.a.b();
  }
  
  public void b(String paramString) {
    this.a.a(paramString);
  }
  
  public void c() {
    this.a.a();
  }
  
  public void c(String paramString) {
    this.a.b(paramString);
  }
  
  public void d() {
    this.b.b();
  }
  
  public void d(String paramString) {
    this.a.c(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */