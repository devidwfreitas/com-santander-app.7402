import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;

public class lrm implements gkw<is> {
  public lrm(SinisterActivity paramSinisterActivity, long paramLong, kva paramkva) {}
  
  public void a(is paramis) {
    if (!this.c.isFinishing() && this.a == SinisterActivity.d(this.c)) {
      kvb kvb;
      if (paramis != null && paramis.a().intValue() == 200) {
        kvb = mys.a().<kvb>a(paramis.c().toString(), kvb.class);
        this.c.D.setState(aor.CONTENT);
        this.c.a(kvb, this.b);
        return;
      } 
      SinisterActivity.a(this.c, (is)kvb);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */