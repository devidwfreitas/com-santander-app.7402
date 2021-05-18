import android.content.SharedPreferences;
import com.santander.app.MinhaConta;
import com.santander.app.contacorrente.domain.Conta;
import java.util.List;

public class kiz {
  private kht a;
  
  public khv a() {
    khv khv = null;
    SharedPreferences sharedPreferences = MinhaConta.b().getSharedPreferences("dados_guardar_recarga", 0);
    if (sharedPreferences != null) {
      khv = new khv();
      khv.a(sharedPreferences.getString("recarga_operadora", ""));
      khv.b(sharedPreferences.getInt("recarga_operadora_position", 0));
      khv.b(nag.b(sharedPreferences.getString("recarga_ddd", "")));
      khv.c(nag.b(sharedPreferences.getString("recarga_numero", "")));
      khv.a(sharedPreferences.getInt("recarga_valor", 0));
      khv.a(sharedPreferences.getBoolean("recarga_guardar", false));
    } 
    return khv;
  }
  
  public void a(gkw<List<Conta>> paramgkw) {
    paramgkw.a(miq.C().f().q().a());
  }
  
  public void a(khv paramkhv) {
    SharedPreferences.Editor editor = MinhaConta.b().getSharedPreferences("dados_guardar_recarga", 0).edit();
    editor.putString("recarga_operadora", paramkhv.a());
    editor.putInt("recarga_operadora_position", paramkhv.g());
    editor.putString("recarga_ddd", nag.a(paramkhv.b()));
    editor.putString("recarga_numero", nag.a(paramkhv.c()));
    editor.putInt("recarga_valor", paramkhv.f());
    editor.putBoolean("recarga_guardar", paramkhv.e());
    editor.commit();
  }
  
  public void b(gkw<kht> paramgkw) {
    if (this.a != null) {
      paramgkw.a(this.a);
      return;
    } 
    khu khu = new khu();
    khu.a(mzr.e());
    khu.c(mzr.f());
    khu.b(miq.C().i());
    khu.e(miq.C().j());
    khu.f(miq.C().f().m());
    (new kjb(khu, new kja(this, paramgkw))).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kiz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */