import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import com.santander.app.dpp.DPPComprovanteActivity;
import com.santander.app.dpp.DPPValidacaoActivity;

public class hei extends AsyncTask<Void, Void, hem> {
  public hei(DPPValidacaoActivity paramDPPValidacaoActivity) {}
  
  protected hem a(Void... paramVarArgs) {
    try {
      return hat.u().b(DPPValidacaoActivity.a(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(hem paramhem) {
    if (DPPValidacaoActivity.b(this.a) != null && DPPValidacaoActivity.b(this.a).isShowing()) {
      DPPValidacaoActivity.b(this.a).cancel();
      DPPValidacaoActivity.a(this.a, null);
    } 
    if (paramhem.a().equals("0")) {
      Intent intent = new Intent(this.a.getApplicationContext(), DPPComprovanteActivity.class);
      Bundle bundle = new Bundle();
      bundle.putString("autenticacaoBancaria", paramhem.v().toString());
      DPPValidacaoActivity.a(this.a).v(paramhem.v().toString());
      bundle.putSerializable("dpp", DPPValidacaoActivity.a(this.a));
      bundle.putInt("opcao", DPPValidacaoActivity.c(this.a));
      intent.putExtras(bundle);
      DPPValidacaoActivity.d(this.a);
      this.a.startActivity(intent);
      return;
    } 
    if (paramhem.c() != null && !paramhem.c().isEmpty()) {
      mxn.e(this.a.i, paramhem.c());
      return;
    } 
    hat.d().a(this.a.i, paramhem, true, false);
  }
  
  public void onPreExecute() {
    DPPValidacaoActivity.a(this.a, mxn.b(this.a.i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hei.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */