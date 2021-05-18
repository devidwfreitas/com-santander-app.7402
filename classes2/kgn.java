import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class kgn {
  private kgx a;
  
  private final String b = "Ocorreu um erro ao carregar as informações";
  
  public kgn(kgx paramkgx) {
    this.a = paramkgx;
  }
  
  private gkv<kgk> b() {
    return new kgo(this);
  }
  
  private gkv<kgi> c() {
    return new kgp(this);
  }
  
  public void a() {
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(5, 1);
    Date date = calendar.getTime();
    String str = (new SimpleDateFormat("yyyyMMdd")).format(date);
    kgl kgl = new kgl();
    kgl.a(mzr.e());
    kgl.e(mzr.f());
    kgl.d(miq.C().i());
    kgl.z(miq.C().j());
    kgl.A(miq.C().f().m());
    kgl.b("false");
    kgl.k("false");
    kgl.v("false");
    kgl.h(str);
    (new khg(kgl, b())).execute((Object[])new Void[0]);
  }
  
  public void a(kgj paramkgj) {
    paramkgj.f(miq.C().i());
    paramkgj.B(miq.C().j());
    paramkgj.C(hau.a().d());
    (new kko(paramkgj, c())).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kgn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */