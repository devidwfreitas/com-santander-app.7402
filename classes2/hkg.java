import android.view.View;

class hkg implements View.OnClickListener {
  hkg(hkf paramhkf, gky paramgky) {}
  
  public void onClick(View paramView) {
    if (this.a.b().toLowerCase().contains("iof")) {
      frq.d("CreditoFinanciamento_AnteciparIR_Acao", "InformativoIOF");
      hkf.a(this.b);
      return;
    } 
    if (this.a.b().toLowerCase().contains("vencimento")) {
      frq.d("CreditoFinanciamento_AnteciparIR_Acao", "InformativoVencimentoOperacao");
      hkf.b(this.b);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hkg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */