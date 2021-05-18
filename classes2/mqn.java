import android.app.Activity;
import android.app.Dialog;
import org.json.JSONObject;

public class mqn {
  private Activity a;
  
  private Dialog b;
  
  public mqn(Activity paramActivity) {
    this.a = paramActivity;
    this.b = ano.a(paramActivity);
  }
  
  public void a(gkw paramgkw) {
    JSONObject jSONObject = new JSONObject();
    String str = nab.a().b(jSONObject.toString());
    iq iq = gnz.a().a("transfer/v1/availableLimit", im.POST, str, true);
    this.b.show();
    try {
      gnz.a().b().a(iq, new mqu(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void a(gkw paramgkw, iq paramiq) {
    this.b.show();
    try {
      gnz.a().b().a(paramiq, new mqv(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void a(gkw paramgkw, mky parammky) {
    (new mrc(new mqp(this, paramgkw), this.a)).execute((Object[])new mky[] { parammky });
  }
  
  public void a(gkw paramgkw, mla parammla) {
    (new mrd(new mqr(this, paramgkw), this.a)).execute((Object[])new mla[] { parammla });
  }
  
  public void a(gkw paramgkw, mlc parammlc) {
    (new mre(new mqs(this, paramgkw), this.a)).execute((Object[])new mlc[] { parammlc });
  }
  
  public void a(gkw paramgkw, mll parammll) {
    (new mrf(new mqo(this, paramgkw), this.a)).execute((Object[])new mll[] { parammll });
  }
  
  public void a(gkw paramgkw, mlq parammlq) {
    (new mrh(new mqq(this, paramgkw), this.a)).execute((Object[])new mlq[] { parammlq });
  }
  
  public void b(gkw paramgkw, iq paramiq) {
    this.b.show();
    try {
      gnz.a().b().a(paramiq, new mqw(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void b(gkw paramgkw, mlq parammlq) {
    (new mrb(new mqt(this, paramgkw), this.a)).execute((Object[])new mlq[] { parammlq });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mqn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */