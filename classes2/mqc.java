import android.app.Activity;
import android.app.Dialog;
import com.santander.app.contacorrente.domain.Conta;
import org.json.JSONObject;

public class mqc {
  public static mkt a;
  
  public static Conta b;
  
  private static final String d = "validarAgenciaContaSantander";
  
  private static final String e = "validarAgenciaOutrosBancos";
  
  private Activity c;
  
  private Dialog f;
  
  public mqc(Activity paramActivity) {
    this.c = paramActivity;
    this.f = ano.a(paramActivity);
  }
  
  public void a(gkw paramgkw) {
    (new mqx(new mqf(this, paramgkw), this.c)).execute((Object[])new Void[0]);
  }
  
  public void a(gkw paramgkw, iq paramiq) {
    this.f.show();
    try {
      gnz.a().b().a(paramiq, new mqj(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void a(gkw paramgkw, mku parammku) {
    (new mqy(new mqd(this, paramgkw), this.c)).execute((Object[])new mku[] { parammku });
  }
  
  public void a(gkw paramgkw, mlj parammlj) {
    (new mqz(new mqg(this, paramgkw), this.c)).execute((Object[])new mlj[] { parammlj });
  }
  
  public void a(gkw paramgkw, mlt parammlt) {
    (new mrg(new mqh(this, paramgkw), this.c, "validarAgenciaContaSantander")).execute((Object[])new mlt[] { parammlt });
  }
  
  public void a(mkw parammkw) {
    (new mra(this.c)).execute((Object[])new mkw[] { parammkw });
  }
  
  public void b(gkw paramgkw) {
    JSONObject jSONObject = new JSONObject();
    String str = nab.a().b(jSONObject.toString());
    iq iq = gnz.a().a("transfer/v1/listPopularBanksISPB", im.POST, str, true);
    this.f.show();
    try {
      gnz.a().b().a(iq, new mqk(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void b(gkw paramgkw, iq paramiq) {
    this.f.show();
    try {
      gnz.a().b().a(paramiq, new mqm(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void b(gkw paramgkw, mlt parammlt) {
    (new mrg(new mqi(this, paramgkw), this.c, "validarAgenciaOutrosBancos")).execute((Object[])new mlt[] { parammlt });
  }
  
  public void c(gkw paramgkw) {
    JSONObject jSONObject = new JSONObject();
    String str = nab.a().b(jSONObject.toString());
    iq iq = gnz.a().a("transfer/v1/listAllISPB", im.POST, str, true);
    this.f.show();
    try {
      gnz.a().b().a(iq, new mql(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public void c(gkw paramgkw, iq paramiq) {
    this.f.show();
    try {
      gnz.a().b().a(paramiq, new mqe(this, paramgkw));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mqc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */