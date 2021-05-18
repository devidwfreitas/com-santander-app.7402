import android.support.v4.app.Fragment;
import android.view.View;

class lpf implements View.OnClickListener {
  lpf(loz paramloz) {}
  
  public void onClick(View paramView) {
    if (mgt.d(loz.a(this.a).i())) {
      frq.d("Seguros_Contratacao_Vida_Resumo_Acao", "IndicarBeneficiarios");
    } else if (mgt.b(loz.a(this.a).i())) {
      frq.d("Seguros_Contratacao_AP_Resumo_Acao", "IndicarBeneficiarios");
    } 
    loz.a(this.a).a(mfn.COMPLETED_GREEN, false);
    loz.k(this.a);
    lou lou = lou.a(loz.a(this.a).c().e());
    lou.a(new lpg(this));
    loz.a(this.a).a((Fragment)lou, "contract-summary-beneficiaries-tag");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lpf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */