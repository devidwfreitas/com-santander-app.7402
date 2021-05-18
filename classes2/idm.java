import android.view.View;
import java.util.List;

public class idm implements ick, idl {
  private icw a;
  
  private hzt b;
  
  private ice c;
  
  private ibo d;
  
  public idm(icw paramicw, ibo paramibo) {
    this.a = paramicw;
    this.d = paramibo;
    this.c = new icf(this);
    this.c.a();
    this.c.a(paramicw.a());
  }
  
  public void a(View paramView) {
    this.a.a(this.b);
  }
  
  public void a(List<ibv> paramList) {
    this.a.a(paramList);
  }
  
  public void a(boolean paramBoolean, hzt paramhzt) {
    this.b = paramhzt;
    if (paramBoolean && !this.d.d().equalsIgnoreCase("Seguros")) {
      this.a.b();
      return;
    } 
    this.a.c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\idm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */