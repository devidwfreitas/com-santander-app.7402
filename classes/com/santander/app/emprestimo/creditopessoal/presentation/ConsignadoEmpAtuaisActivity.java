package com.santander.app.emprestimo.creditopessoal.presentation;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateContract;
import grs;
import hoh;
import hri;
import hrj;
import hsl;
import hsm;
import hxq;
import java.util.List;

public class ConsignadoEmpAtuaisActivity extends grs implements hrj {
  private RecyclerView a;
  
  private hsl b;
  
  public void a(hxq paramhxq) {
    ((TextView)findViewById(2131755529)).setText(paramhxq.getValorParcelasOutrosFormatted());
    this.a = (RecyclerView)findViewById(2131755530);
    hri hri = new hri(this, (Context)this);
    this.a.setHasFixedSize(true);
    this.a.setLayoutManager((RecyclerView.LayoutManager)hri);
  }
  
  public void a(List<ConsignadoCalculateContract> paramList) {
    hoh hoh = new hoh(paramList);
    this.a.setAdapter((RecyclerView.Adapter)hoh);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968642);
    c(2131297054);
    this.b = (hsl)new hsm(this);
    this.b.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\ConsignadoEmpAtuaisActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */