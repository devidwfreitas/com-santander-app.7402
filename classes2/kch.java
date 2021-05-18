import android.util.Log;

public class kch implements kcf {
  private kcn a;
  
  private kcg b;
  
  public kch(kcg paramkcg) {
    this.b = paramkcg;
    this.a = new kco();
  }
  
  private kcc b(String paramString, kce paramkce) {
    naf naf = new naf();
    fwv fwv = new fwv();
    kcc kcc = new kcc();
    try {
      kcc.a(naf.b(fwv.e().getBytes("UTF-8")));
      kcc.b(naf.b(fwv.l().getBytes("UTF-8")));
      kcc.c(naf.b(paramString.getBytes("UTF-8")));
      kcc.d(naf.b(paramkce.a().getBytes("UTF-8")));
      kcc.setConnUuid(miq.C().i());
      return kcc;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return kcc;
    } 
  }
  
  public void a() {
    this.a.a(new kci(this));
  }
  
  public void a(String paramString, kce paramkce) {
    this.a.a(new kck(this), b(paramString, paramkce));
  }
  
  public void b() {
    this.a.b(new kcj(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */