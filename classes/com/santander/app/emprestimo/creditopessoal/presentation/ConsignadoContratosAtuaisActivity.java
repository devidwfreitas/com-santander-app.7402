package com.santander.app.emprestimo.creditopessoal.presentation;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoContract;
import frq;
import grs;
import hnz;
import hrc;
import hsd;
import hse;
import java.util.List;

public class ConsignadoContratosAtuaisActivity extends grs implements hrc {
  private hsd a;
  
  private RecyclerView b;
  
  public void a() {
    this.b = (RecyclerView)findViewById(2131755523);
    this.b.setHasFixedSize(true);
    this.b.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    frq.d("CreditoFinanciamento_Emprestimos_Contratacao_InformativoResumoContratual_Acao", "InformativoContratosAtuais");
  }
  
  public void a(List<ConsignadoContract> paramList) {
    hnz hnz = new hnz(paramList);
    this.b.setAdapter((RecyclerView.Adapter)hnz);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968640);
    this.a = (hsd)new hse(this);
    this.a.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\ConsignadoContratosAtuaisActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */