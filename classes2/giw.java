import android.view.View;
import android.widget.AdapterView;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaActivity;

public class giw implements AdapterView.OnItemSelectedListener {
  public giw(ParcelamentoFaturaActivity paramParcelamentoFaturaActivity) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    ghv ghv;
    String str;
    if (paramInt == 0) {
      frq.d("Cartoes_ParcelamentoDeFatura_OpcoesDeParcelamento", "ParcelasFixas");
    } else if (paramInt == 1) {
      frq.d("Cartoes_ParcelamentoDeFatura_OpcoesDeParcelamento", "ValorPacial");
    } 
    if (ParcelamentoFaturaActivity.g(this.a))
      return; 
    if (paramInt == 0) {
      ParcelamentoFaturaActivity.l(this.a).setVisibility(0);
      ParcelamentoFaturaActivity.m(this.a).setVisibility(8);
    } else {
      ParcelamentoFaturaActivity.l(this.a).setVisibility(0);
      ParcelamentoFaturaActivity.m(this.a).setVisibility(0);
    } 
    if (paramInt == 0) {
      ParcelamentoFaturaActivity.f(this.a).a(ParcelamentoFaturaActivity.e(this.a));
      return;
    } 
    gjl gjl = ParcelamentoFaturaActivity.f(this.a);
    if (ParcelamentoFaturaActivity.b(this.a)) {
      ghw ghw = ParcelamentoFaturaActivity.c(this.a);
    } else {
      ghv = ParcelamentoFaturaActivity.d(this.a);
    } 
    ghu ghu = ParcelamentoFaturaActivity.e(this.a);
    if (ParcelamentoFaturaActivity.b(this.a)) {
      str = ParcelamentoFaturaActivity.c(this.a).u();
    } else {
      str = ParcelamentoFaturaActivity.d(this.a).u();
    } 
    gjl.a((gnb)ghv, ghu, "P", str);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\giw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */