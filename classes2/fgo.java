import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.widget.ListAdapter;
import com.santander.app.BeneficiarioPagamentoListActivity;

public class fgo extends AsyncTask<Void, Void, fuq> {
  private boolean b = false;
  
  public fgo(BeneficiarioPagamentoListActivity paramBeneficiarioPagamentoListActivity) {}
  
  protected fuq a(Void... paramVarArgs) {
    try {
      return hat.n().a();
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(fuq paramfuq) {
    if (BeneficiarioPagamentoListActivity.b(this.a) != null && BeneficiarioPagamentoListActivity.b(this.a).isShowing()) {
      BeneficiarioPagamentoListActivity.b(this.a).cancel();
      BeneficiarioPagamentoListActivity.a(this.a, null);
    } 
    if (paramfuq != null) {
      BeneficiarioPagamentoListActivity.a(this.a, paramfuq);
      if (BeneficiarioPagamentoListActivity.c(this.a).a().size() > 0) {
        View view = this.a.getLayoutInflater().inflate(2130968808, null);
        BeneficiarioPagamentoListActivity.a(this.a, paramfuq);
        BeneficiarioPagamentoListActivity.a(this.a, new fok((Context)BeneficiarioPagamentoListActivity.a(this.a), 2130968803, BeneficiarioPagamentoListActivity.c(this.a).a()));
        BeneficiarioPagamentoListActivity.d(this.a).addHeaderView(view, null, false);
        BeneficiarioPagamentoListActivity.d(this.a).setAdapter((ListAdapter)BeneficiarioPagamentoListActivity.e(this.a));
        return;
      } 
      mxn.a(BeneficiarioPagamentoListActivity.a(this.a), this.a.getResources().getString(2131297207), this.a.getResources().getString(2131297168), true);
      return;
    } 
    mxn.e(BeneficiarioPagamentoListActivity.a(this.a), this.a.getResources().getString(2131297168));
  }
  
  public boolean a() {
    return this.b;
  }
  
  public void onPreExecute() {
    this.b = true;
    BeneficiarioPagamentoListActivity.a(this.a, mxn.b(BeneficiarioPagamentoListActivity.a(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */