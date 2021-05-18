import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class hlp implements hlm {
  private hmy a = new hnc();
  
  private void a(List<hxl> paramList) {
    Collections.sort(paramList, new hlu(this));
  }
  
  private void b(hxl paramhxl, hln paramhln) {
    this.a.a(paramhxl, new hls(this, paramhln));
  }
  
  private void c(hxl paramhxl, hln paramhln) {
    this.a.b(paramhxl, new hlt(this, paramhln));
  }
  
  public void a(hlo paramhlo) {
    ArrayList arrayList = new ArrayList();
    this.a.a(new hlq(this, arrayList, paramhlo));
  }
  
  public void a(hxl paramhxl, hln paramhln) {
    if (paramhxl.a() == 10) {
      b(paramhxl, paramhln);
      return;
    } 
    if (paramhxl.a() == 11) {
      c(paramhxl, paramhln);
      return;
    } 
    paramhln.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hlp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */