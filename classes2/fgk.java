import android.os.AsyncTask;
import com.santander.app.BeneficiarioPagamentoDetalheActivity;

public class fgk extends AsyncTask<fur, Void, Boolean> {
  private fur b;
  
  fgk(BeneficiarioPagamentoDetalheActivity paramBeneficiarioPagamentoDetalheActivity) {}
  
  protected Boolean a(fur... paramVarArgs) {
    boolean bool3 = false;
    boolean bool1 = false;
    boolean bool2 = bool3;
    try {
      this.b = paramVarArgs[0];
      bool2 = bool3;
      switch (fgj.a[this.b.f().ordinal()]) {
        case 1:
          bool2 = bool3;
          bool1 = hat.n().c(this.b);
          break;
        case 2:
          bool2 = bool3;
          bool1 = hat.n().a(this.b);
          break;
        case 3:
          bool2 = bool3;
          bool1 = hat.n().b(this.b);
          break;
      } 
      bool2 = bool1;
      return Boolean.valueOf(bool1);
    } catch (Exception exception) {
      return Boolean.valueOf(bool2);
    } 
  }
  
  protected void a(Boolean paramBoolean) {
    if (BeneficiarioPagamentoDetalheActivity.b(this.a) != null && BeneficiarioPagamentoDetalheActivity.b(this.a).isShowing()) {
      BeneficiarioPagamentoDetalheActivity.b(this.a).cancel();
      BeneficiarioPagamentoDetalheActivity.a(this.a, null);
    } 
    this.a.finish();
  }
  
  public void onPreExecute() {
    BeneficiarioPagamentoDetalheActivity.a(this.a, mxn.b(this.a.i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */