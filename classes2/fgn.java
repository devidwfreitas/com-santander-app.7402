import android.os.AsyncTask;
import com.santander.app.BeneficiarioPagamentoListActivity;

public class fgn extends AsyncTask<fur, Void, Boolean> {
  private fur b;
  
  fgn(BeneficiarioPagamentoListActivity paramBeneficiarioPagamentoListActivity) {}
  
  protected Boolean a(fur... paramVarArgs) {
    boolean bool3 = false;
    boolean bool1 = false;
    boolean bool2 = bool3;
    try {
      this.b = paramVarArgs[0];
      bool2 = bool3;
      switch (fgm.a[this.b.f().ordinal()]) {
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
    if (BeneficiarioPagamentoListActivity.b(this.a) != null && BeneficiarioPagamentoListActivity.b(this.a).isShowing()) {
      BeneficiarioPagamentoListActivity.b(this.a).cancel();
      BeneficiarioPagamentoListActivity.a(this.a, null);
    } 
    if (paramBoolean.booleanValue()) {
      BeneficiarioPagamentoListActivity.c(this.a).a().remove(this.b);
      BeneficiarioPagamentoListActivity.e(this.a).notifyDataSetChanged();
    } 
  }
  
  public void onPreExecute() {
    BeneficiarioPagamentoListActivity.a(this.a, mxn.b(BeneficiarioPagamentoListActivity.a(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */