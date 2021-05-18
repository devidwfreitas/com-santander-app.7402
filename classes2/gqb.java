import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.santander.app.SaldoActivity;

final class gqb implements afx {
  public void a() {
    Intent intent = new Intent((Context)gpu.m(), SaldoActivity.class);
    intent.setFlags(335544320);
    gpu.m().startActivity(intent);
  }
  
  public void a(Activity paramActivity) {
    gpu.a(mxn.b(paramActivity, new gqd(this, paramActivity), new gqe(this), paramActivity.getString(2131298272), paramActivity.getString(2131297007), paramActivity.getString(2131296776)));
  }
  
  public void a(String paramString1, String paramString2) {
    frq.d(paramString1, paramString2);
  }
  
  public void b() {
    mzp mzp = mzp.RELOAD_CARTOES;
    mzn mzn = new mzn();
    gqc gqc = new gqc(this);
    mzn.a(new mzp[] { mzp }, gqc);
  }
  
  public void b(Activity paramActivity) {
    gpu.a(mxn.b(paramActivity, new gqf(this, paramActivity), new gqg(this), paramActivity.getString(2131298272), paramActivity.getString(2131297007), paramActivity.getString(2131296776)));
  }
  
  public void c() {
    gpu.a(jox.SUBMENU_ITEM_SIMULAR_CONTRATAR);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gqb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */