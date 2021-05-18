import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.FazerPagamentoBoletoVR;
import com.santander.app.FazerPagamentoConfirmacaoActivity;

public class fhq extends AsyncTask<Void, Void, fvk> {
  private fhq(FazerPagamentoBoletoVR paramFazerPagamentoBoletoVR) {}
  
  protected fvk a(Void... paramVarArgs) {
    try {
      FazerPagamentoBoletoVR.g(this.a).n("");
      return hat.k().a(FazerPagamentoBoletoVR.g(this.a));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
  }
  
  protected void a(fvk paramfvk) {
    Intent intent;
    if (FazerPagamentoBoletoVR.h(this.a) != null && FazerPagamentoBoletoVR.h(this.a).isShowing()) {
      FazerPagamentoBoletoVR.h(this.a).cancel();
      FazerPagamentoBoletoVR.a(this.a, null);
    } 
    if (paramfvk == null) {
      hat.d().a(FazerPagamentoBoletoVR.f(this.a), paramfvk, true, false);
      return;
    } 
    if (paramfvk.hasError()) {
      hat.d().a(FazerPagamentoBoletoVR.f(this.a), paramfvk, true, false);
      return;
    } 
    paramfvk.a(FazerPagamentoBoletoVR.g(this.a).X());
    paramfvk.s(FazerPagamentoBoletoVR.g(this.a).s());
    paramfvk.U(FazerPagamentoBoletoVR.g(this.a).U());
    paramfvk.D(FazerPagamentoBoletoVR.g(this.a).D());
    paramfvk.C(FazerPagamentoBoletoVR.g(this.a).C());
    paramfvk.t(FazerPagamentoBoletoVR.g(this.a).t());
    paramfvk.q(FazerPagamentoBoletoVR.g(this.a).q());
    paramfvk.r(FazerPagamentoBoletoVR.g(this.a).r());
    paramfvk.I(FazerPagamentoBoletoVR.g(this.a).I());
    paramfvk.J(FazerPagamentoBoletoVR.g(this.a).J());
    FazerPagamentoBoletoVR.a(this.a, paramfvk);
    hau.a().a(paramfvk);
    if (paramfvk.E().length() > 0) {
      intent = new Intent((Context)FazerPagamentoBoletoVR.f(this.a), FazerPagamentoConfirmacaoActivity.class);
      intent.putExtra("type_pagamento", 1);
      FazerPagamentoBoletoVR.f(this.a).startActivity(intent);
      return;
    } 
    if (intent.z().length() > 1) {
      hat.d().a(FazerPagamentoBoletoVR.f(this.a), intent.z());
      return;
    } 
    if (intent.getFaultstring() != null && intent.getFaultstring().length() > 0) {
      hat.d().a(FazerPagamentoBoletoVR.f(this.a), intent.getFaultstring());
      return;
    } 
    hat.d().a(FazerPagamentoBoletoVR.f(this.a), (fvu)intent, true, false);
  }
  
  public void onPreExecute() {
    FazerPagamentoBoletoVR.a(this.a, mxn.b(FazerPagamentoBoletoVR.f(this.a)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */