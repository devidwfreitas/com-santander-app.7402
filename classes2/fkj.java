import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.PoupancaAplicacaoActivity;

public class fkj extends AsyncTask<Void, Void, fsy> {
  private boolean b = false;
  
  private ftl c;
  
  private String d;
  
  private fkj(PoupancaAplicacaoActivity paramPoupancaAplicacaoActivity) {}
  
  private void b(fsy paramfsy) {
    if (paramfsy.m() == null || "".equals(paramfsy.m())) {
      this.a.openConfirmar(paramfsy, this.c);
      return;
    } 
    mxn.b((Activity)PoupancaAplicacaoActivity.h(this.a), paramfsy.m());
  }
  
  protected fsy a(Void... paramVarArgs) {
    paramVarArgs = null;
    if (!this.b)
      try {
        return hat.j().a(this.d, this.c, PoupancaAplicacaoActivity.i(this.a), PoupancaAplicacaoActivity.f(this.a));
      } catch (Exception exception) {
        Log.e("Error", exception.toString());
        return null;
      }  
    return (fsy)exception;
  }
  
  protected void a(fsy paramfsy) {
    if (!this.b) {
      if (PoupancaAplicacaoActivity.j(this.a) != null && PoupancaAplicacaoActivity.j(this.a).isShowing()) {
        PoupancaAplicacaoActivity.j(this.a).cancel();
        PoupancaAplicacaoActivity.a(this.a, null);
      } 
      if (paramfsy != null) {
        if (paramfsy.hasError()) {
          hat.d().a((Activity)PoupancaAplicacaoActivity.h(this.a), paramfsy, false);
          return;
        } 
        b(paramfsy);
        return;
      } 
    } 
  }
  
  public void a(String paramString1, boolean paramBoolean, ftl paramftl, String paramString2) {
    PoupancaAplicacaoActivity.a(this.a, nak.u(paramString1));
    if (paramString1.equals(PoupancaAplicacaoActivity.f(this.a)))
      PoupancaAplicacaoActivity.a(this.a, nak.t(paramString1)); 
    PoupancaAplicacaoActivity.a(this.a, paramBoolean);
    PoupancaAplicacaoActivity.b(this.a, paramString2);
    this.c = paramftl;
    this.d = paramString2;
  }
  
  public void onPreExecute() {
    String str = PoupancaAplicacaoActivity.g(this.a).getText().toString();
    if (str.length() > 0 && !str.trim().isEmpty()) {
      this.d = naj.m(str);
    } else {
      mxn.e((Activity)PoupancaAplicacaoActivity.h(this.a), this.a.getResources().getString(2131297203));
      this.b = true;
    } 
    PoupancaAplicacaoActivity.a(this.a, mxn.b((Activity)PoupancaAplicacaoActivity.h(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */