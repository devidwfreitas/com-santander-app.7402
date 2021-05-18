import android.util.Log;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class kkj {
  private kkf a;
  
  public kkj(kkf paramkkf) {
    this.a = paramkkf;
  }
  
  public void a(kgj paramkgj) {
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("ddMMyy");
    try {
      String str1 = simpleDateFormat1.format(simpleDateFormat2.parse(paramkgj.m()));
      String str3 = simpleDateFormat1.format(simpleDateFormat3.parse(paramkgj.j()));
      String str2 = simpleDateFormat1.format(simpleDateFormat2.parse(paramkgj.i()));
      paramkgj.l(str1);
      paramkgj.k(str3);
      paramkgj.i(str2);
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
    } 
    paramkgj.f(miq.C().i());
    paramkgj.B(miq.C().j());
    paramkgj.C(miq.C().f().m());
    (new kko(paramkgj, new kkn(this))).execute((Object[])new Void[0]);
  }
  
  public void a(kid paramkid) {
    paramkid.e(miq.C().i());
    paramkid.A(miq.C().j());
    paramkid.B(miq.C().f().m());
    (new kkq(paramkid, new kkk(this))).execute((Object[])new Void[0]);
  }
  
  public void b(kid paramkid) {
    paramkid.e(miq.C().i());
    paramkid.A(miq.C().j());
    paramkid.B(miq.C().f().m());
    (new kkr(paramkid, new kkl(this))).execute((Object[])new Void[0]);
  }
  
  public void c(kid paramkid) {
    paramkid.e(miq.C().i());
    paramkid.A(miq.C().j());
    paramkid.B(miq.C().f().m());
    (new kkp(paramkid, new kkm(this))).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kkj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */