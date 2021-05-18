package com.santander.app.investimentos.fundos.presentation;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import gpu;
import grs;
import java.util.ArrayList;
import jdk;
import jdu;
import jdx;
import jgz;
import jha;
import jhn;

public class ListagemContasFundosActivity extends grs {
  private RecyclerView a;
  
  private TextView b;
  
  private ArrayList<jdx> c;
  
  private jdx d;
  
  private void a() {
    this.b = (TextView)findViewById(2131755877);
    this.b.setText("Contas fundo " + this.d.M());
    this.a = (RecyclerView)findViewById(2131755878);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    this.a.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    b();
  }
  
  private void b() {
    if (this.d.t() == jdk.REAPLICAR)
      d(); 
    c();
    this.a.setAdapter((RecyclerView.Adapter)new jhn(this.c, this.d, e()));
  }
  
  private void c() {
    if (this.d.g() == null) {
      jdu jdu = new jdu();
      jdu.a(true);
      this.d.a(jdu);
      return;
    } 
    this.d.g().a(true);
  }
  
  private void d() {
    jdu jdu = new jdu();
    jdu.b(true);
    jdx jdx1 = new jdx();
    jdx1.a(jdu);
    jdx1.b("Nova");
    this.c.add(jdx1);
  }
  
  private View.OnClickListener e() {
    return (View.OnClickListener)new jgz(this);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    overridePendingTransition(2131034132, 2131034134);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968702);
    this.c = (ArrayList<jdx>)getIntent().getExtras().getSerializable("lista_contas_fundo");
    this.d = (jdx)getIntent().getExtras().getSerializable("conta_fundo_selected");
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    switch (jha.a[this.d.t().ordinal()]) {
      default:
        a();
        return;
      case 1:
        gpu.a((Activity)this, actionBar, getString(2131297846));
      case 2:
        break;
    } 
    gpu.a((Activity)this, actionBar, getString(2131297994));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\fundos\presentation\ListagemContasFundosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */