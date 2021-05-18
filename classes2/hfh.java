import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.santander.app.components.view.SantanderTextView;

class hfh extends RecyclerView.ViewHolder implements View.OnClickListener {
  private SantanderTextView a;
  
  private hff b;
  
  private hgb c;
  
  hfh(hff paramhff, View paramView) {
    super(paramView);
    this.b = paramhff;
    this.a = (SantanderTextView)paramView.findViewById(2131756130);
    paramView.setOnClickListener(this);
  }
  
  void a(hgb paramhgb) {
    this.c = paramhgb;
    if (this.a != null)
      this.a.setText(paramhgb.h()); 
  }
  
  public void onClick(View paramView) {
    if (hff.a(this.b) != null) {
      String str = this.c.h();
      byte b = -1;
      switch (str.hashCode()) {
        default:
          switch (b) {
            default:
              hff.a(this.b).a(this.c);
              return;
            case 0:
              frq.d("CreditoFinanciamento_Emprestimos_Contratacao_InformativoResumoContratual_Acao", "Refinanciamento");
            case 1:
              frq.d("CreditoFinanciamento_Emprestimos_Contratacao_InformativoCondicoesGeraisEmprestimo_Acao", "Refinanciamento");
            case 2:
              break;
          } 
          break;
        case 202367945:
          if (str.equals("Contrato de Renegociação."))
            b = 0; 
        case 1544345178:
          if (str.equals("Condições Gerais."))
            b = 1; 
        case 2001205021:
          if (str.equals("Custo Efetivo Total (CET)."))
            b = 2; 
      } 
    } else {
      return;
    } 
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_InformativoCET_Acao", "Refinanciamento");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */