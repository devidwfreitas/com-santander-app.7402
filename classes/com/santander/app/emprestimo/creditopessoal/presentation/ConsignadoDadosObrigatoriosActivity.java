package com.santander.app.emprestimo.creditopessoal.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.style.StyleSpan;
import android.view.View;
import bfj;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoDadoObrigatorio;
import grs;
import hob;
import hrd;
import hre;
import hrf;
import hrg;
import hrh;
import hsi;
import hsj;
import hxq;
import hys;
import java.util.List;
import mxn;

public class ConsignadoDadosObrigatoriosActivity extends grs implements hrh {
  public static final int a = 200;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  private SantanderTextView d;
  
  private RecyclerView e;
  
  private SantanderButtonView f;
  
  private hsi g;
  
  private hob w;
  
  private Dialog x;
  
  public void a() {
    if (this.w != null)
      this.w.notifyDataSetChanged(); 
  }
  
  public void a(hxq paramhxq) {
    bfj bfj = new bfj();
    bfj.a("Desconto em folha de pagamento.\n");
    bfj.a("Dinheiro liberado ");
    bfj.a(paramhxq.getDiasUteisFormatted());
    bfj.a("\n\n");
    bfj.a(getString(2131296956));
    bfj.a(" ");
    bfj.a(paramhxq.getNomeConvenio(), new StyleSpan(1));
    bfj.a(" preenchendo os dados abaixo.");
    this.d.setText((CharSequence)bfj);
  }
  
  public void a(List<ConsignadoDadoObrigatorio> paramList) {
    this.w = (hob)new hre(this, paramList);
    this.e.setHasFixedSize(true);
    this.e.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.e.setAdapter((RecyclerView.Adapter)this.w);
  }
  
  public void b() {
    hys.a((Activity)this, 2131296959, getString(2131296958), 2131298300, false);
  }
  
  public void c() {
    setResult(2);
    finish();
  }
  
  public void d() {
    setResult(1);
    hys.a((Activity)this, getString(2131297343), true);
  }
  
  public void e() {
    runOnUiThread((Runnable)new hrf(this));
  }
  
  public void f() {
    runOnUiThread((Runnable)new hrg(this));
  }
  
  public void g() {
    if (this.x == null)
      this.x = mxn.b((Activity)this); 
  }
  
  public void h() {
    if (this.x != null) {
      this.x.dismiss();
      this.x = null;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968641);
    c(2131297065);
    this.d = (SantanderTextView)findViewById(2131755524);
    this.e = (RecyclerView)findViewById(2131755525);
    this.f = (SantanderButtonView)findViewById(2131755526);
    this.f.setOnClickListener((View.OnClickListener)new hrd(this));
    setResult(1);
    this.g = (hsi)new hsj(this);
    this.g.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.g.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\ConsignadoDadosObrigatoriosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */