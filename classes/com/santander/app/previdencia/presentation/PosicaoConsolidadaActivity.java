package com.santander.app.previdencia.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.TextView;
import gpu;
import grs;
import hat;
import kcy;
import ker;
import kes;
import ket;
import keu;
import kev;
import kew;
import kfd;
import kfw;
import kfx;
import mxn;

public class PosicaoConsolidadaActivity extends grs implements kew {
  private ExpandableListView a;
  
  private kfw b;
  
  private Dialog c;
  
  private Dialog d;
  
  private TextView e;
  
  private Button f;
  
  private Button g;
  
  private Button w;
  
  public void a() {
    this.a = (ExpandableListView)findViewById(2131758357);
    this.b.a();
    this.w = (Button)findViewById(2131758361);
    this.w.setOnClickListener((View.OnClickListener)new ker(this));
    this.g = (Button)findViewById(2131758362);
    this.g.setOnClickListener((View.OnClickListener)new kes(this));
    this.d = new Dialog((Context)this, 2131427876);
    this.d.setContentView(2130968962);
    this.d.setCancelable(true);
    this.e = (TextView)this.d.findViewById(2131756912);
    this.f = (Button)this.d.findViewById(2131756913);
    this.f.setText(getString(2131296665));
    this.d.findViewById(2131756030).setOnClickListener((View.OnClickListener)new ket(this));
    this.d.findViewById(2131756034).setOnClickListener((View.OnClickListener)new keu(this));
    this.f.setOnClickListener((View.OnClickListener)new kev(this));
  }
  
  public void a(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, true, "OK");
  }
  
  public void a(kcy paramkcy) {
    kfd kfd = new kfd((Context)this, paramkcy);
    this.a.setAdapter((ExpandableListAdapter)kfd);
    int j = this.a.getCount();
    for (int i = 0; i < j; i++)
      this.a.expandGroup(i, false); 
  }
  
  public void b() {
    this.c = mxn.b((Activity)this);
  }
  
  public void b(String paramString) {}
  
  public void c() {
    if (this.c != null && this.c.isShowing()) {
      this.c.dismiss();
      this.c.cancel();
      this.c = null;
    } 
  }
  
  public void d() {
    hat.d().a((Activity)this, null, true, true);
  }
  
  public void d(String paramString) {
    this.e.setText((CharSequence)Html.fromHtml(paramString));
  }
  
  public void e() {
    d("Para novas contratações fale agora com nossa assessoria especializada. <br/>Escolha sua opção:");
    this.d.findViewById(2131756030).setVisibility(0);
    this.d.show();
  }
  
  public void f() {
    d(getString(2131298186));
    this.d.findViewById(2131756030).setVisibility(8);
    this.d.show();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setElevation(0.0F);
    gpu.a((Activity)this, actionBar, getString(2131298997));
    setContentView(2130969416);
    this.b = (kfw)new kfx(this);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\previdencia\presentation\PosicaoConsolidadaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */