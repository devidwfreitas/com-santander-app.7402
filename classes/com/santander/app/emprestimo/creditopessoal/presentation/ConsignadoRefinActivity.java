package com.santander.app.emprestimo.creditopessoal.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import frq;
import grs;
import hrk;
import hsb;
import hsc;
import hxq;

public class ConsignadoRefinActivity extends grs implements View.OnClickListener, hrk {
  private hsb a;
  
  public void a(hxq paramhxq) {
    TextView textView1 = (TextView)findViewById(2131755508);
    TextView textView2 = (TextView)findViewById(2131755509);
    TextView textView3 = (TextView)findViewById(2131755510);
    TextView textView4 = (TextView)findViewById(2131755511);
    TextView textView5 = (TextView)findViewById(2131755514);
    TextView textView6 = (TextView)findViewById(2131755515);
    Button button1 = (Button)findViewById(2131755224);
    Button button2 = (Button)findViewById(2131755517);
    textView1.setText(paramhxq.getParcelamentoAdicionalFormatted());
    textView2.setText(String.format("Taxa %s a.m.", new Object[] { paramhxq.getTaxaJurosFormatted() }));
    textView3.setText(paramhxq.getValorParcelasOutrosFormatted());
    textView5.setText(paramhxq.getValorParcelaFormatted());
    textView6.setText(String.format("em %s", new Object[] { paramhxq.getParcelaFormatted() }));
    textView4.setOnClickListener(this);
    button1.setOnClickListener(this);
    button2.setOnClickListener(this);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  public void onClick(View paramView) {
    switch (paramView.getId()) {
      default:
        return;
      case 2131755511:
        frq.d("CreditoFinanciamento_Emprestimos_OfertaRefinanciamento_Acao", "VejaQuaisEmprestimos");
        startActivity(new Intent((Context)this, ConsignadoEmpAtuaisActivity.class));
        return;
      case 2131755224:
        frq.d("CreditoFinanciamento_Emprestimos_OfertaRefinanciamento_Acao", "Continuar");
        startActivity(new Intent((Context)this, CPContratacaoActivity.class));
        return;
      case 2131755517:
        break;
    } 
    frq.d("CreditoFinanciamento_Emprestimos_OfertaRefinanciamento_Acao", "Voltar");
    onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968638);
    c(2131297054);
    this.a = (hsb)new hsc(this);
    this.a.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\ConsignadoRefinActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */