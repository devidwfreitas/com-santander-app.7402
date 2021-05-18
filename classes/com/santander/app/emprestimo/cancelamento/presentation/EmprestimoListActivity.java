package com.santander.app.emprestimo.cancelamento.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import br.com.santander.uisdk.error.SantanderErrorView;
import gpu;
import hkt;
import hky;
import hmc;
import hml;
import hmm;
import hmn;
import hms;
import hmt;
import hxl;
import hyb;
import java.util.List;
import mxn;

public class EmprestimoListActivity extends hmc implements hmn {
  private RecyclerView a;
  
  private SantanderErrorView b;
  
  private hms c;
  
  private hky d;
  
  private Dialog e;
  
  private void k() {
    this.b = (SantanderErrorView)findViewById(2131755769);
    this.b.setTextButton(getString(2131296783));
    this.b.setIcon(2130838462);
    this.b.setTextTitle(getString(2131298149));
    this.b.setOnButtonClickListener((View.OnClickListener)new hml(this));
    this.a = (RecyclerView)findViewById(2131755525);
    RecyclerView recyclerView = this.a;
    hky hky1 = new hky((hkt)this.c);
    this.d = hky1;
    recyclerView.setAdapter((RecyclerView.Adapter)hky1);
    this.a.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.a.addItemDecoration((RecyclerView.ItemDecoration)new hmm(this));
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.c.h();
  }
  
  public void a(List<hxl> paramList) {
    this.d.a(paramList);
  }
  
  public void b() {
    this.d.a();
  }
  
  public void c() {
    if (this.e == null)
      this.e = mxn.b((Activity)this); 
  }
  
  public void d() {
    if (this.e != null) {
      this.e.dismiss();
      this.e = null;
    } 
  }
  
  public void d(hxl paramhxl) {
    EmprestimoDetailActivity.a((Context)this, paramhxl);
  }
  
  public void e() {
    this.a.setVisibility(8);
    this.b.setVisibility(0);
  }
  
  public void e(hxl paramhxl) {
    EmprestimoDetailActivity.a((Context)this, paramhxl, true);
  }
  
  public void f() {
    this.a.setVisibility(0);
    this.b.setVisibility(8);
  }
  
  public void g() {
    gpu.i();
  }
  
  public void h() {
    gpu.j();
  }
  
  public void i() {
    hyb.j().b((Context)this, 3);
  }
  
  public void j() {
    hyb.j().a((Context)this, 3);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968669);
    this.c = (hms)new hmt(this);
    c(2131296782);
    k();
    this.c.d();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.c.f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\cancelamento\presentation\EmprestimoListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */