import android.os.Handler;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;

public class lrk implements gkw<is> {
  public lrk(SinisterActivity paramSinisterActivity) {}
  
  public void a(is paramis) {
    kvb kvb;
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        kvb = mys.a().<kvb>a(paramis.c().toString(), kvb.class);
        this.a.D.setState(aor.CONTENT);
        this.a.C = kvb.f();
        SinisterActivity.b(this.a).clear();
        SinisterActivity.a(this.a, 2);
        SinisterActivity.b(this.a, 0);
        SinisterActivity.a(this.a, kvb);
        SinisterActivity.a(this.a, false);
        SinisterActivity.b(this.a, false);
        mhv.INSTANCE.clear();
        SinisterActivity.a(this.a, null);
        mhv.INSTANCE.setCoverageId(SinisterActivity.c(this.a));
        if (this.a.r()) {
          (new Handler()).postDelayed(new lrl(this, kvb), 50L);
        } else {
          this.a.a(kvb);
        } 
        SinisterActivity.c(this.a, true);
        return;
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      SinisterActivity.a(this.a, (is)kvb);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */