import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.CadastramentoFacturaActivity;

public class fgx extends AsyncTask<Void, Void, fuf> {
  private fgx(CadastramentoFacturaActivity paramCadastramentoFacturaActivity) {}
  
  protected fuf a(Void... paramVarArgs) {
    try {
      fuf fuf2 = CadastramentoFacturaActivity.b(this.a).m();
      fuf fuf1 = fuf2;
      if (fuf2 == null)
        fuf1 = hat.i().c(); 
      return fuf1;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(fuf paramfuf) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramfuf == null) {
      hat.d().a(CadastramentoFacturaActivity.g(this.a), paramfuf, true, false);
      return;
    } 
    if (paramfuf.hasError()) {
      RelativeLayout relativeLayout = (RelativeLayout)CadastramentoFacturaActivity.g(this.a).findViewById(2131756337);
      TextView textView = (TextView)CadastramentoFacturaActivity.g(this.a).findViewById(2131756335);
      ImageView imageView = (ImageView)CadastramentoFacturaActivity.g(this.a).findViewById(2131756336);
      Button button = (Button)this.a.findViewById(2131756343);
      relativeLayout.setVisibility(8);
      textView.setVisibility(8);
      imageView.setVisibility(8);
      button.setEnabled(false);
      if (paramfuf.getFaultstring() != null && paramfuf.getFaultstring().contains("SOAPFaultException")) {
        mxn.a(CadastramentoFacturaActivity.g(this.a), this.a.getResources().getString(2131297176));
        return;
      } 
      hat.d().a(CadastramentoFacturaActivity.g(this.a), paramfuf, true, false);
      return;
    } 
    if (paramfuf.d() != null) {
      mxn.a(CadastramentoFacturaActivity.g(this.a), paramfuf.d());
      return;
    } 
    CadastramentoFacturaActivity.b(this.a).a(paramfuf);
    CadastramentoFacturaActivity.b(this.a, CadastramentoFacturaActivity.b(this.a));
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b((Activity)this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */