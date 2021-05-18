package com.santander.app.carteiradiaria.presentation;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.LinearLayout;
import gev;
import gew;
import gfg;
import gfu;
import gfx;
import ggj;
import ggk;
import gpu;
import grs;
import java.io.Serializable;

public class ListagemCarteiraInvestimentoDetalhesActivity extends grs implements gfu {
  private LinearLayout a;
  
  private ggj b;
  
  private gev c;
  
  private gfg d;
  
  private gew e;
  
  private void a() {
    this.a = (LinearLayout)findViewById(2131758211);
  }
  
  public void a(LinearLayout paramLinearLayout) {
    this.a.addView((View)paramLinearLayout);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968701);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    this.d = (gfg)getIntent().getExtras().getSerializable("tipo_carteira_enum");
    this.c = (gev)getIntent().getExtras().getSerializable("carteira_investimento_detalhes");
    this.e = (gew)getIntent().getExtras().getSerializable("fragment_topo_model");
    this.e.c(this.c.i());
    this.e.a(this.c.i());
    gpu.a((Activity)this, actionBar, this.c.a());
    a();
    Bundle bundle = new Bundle();
    bundle.putSerializable("tipo_carteira_enum", (Serializable)this.d);
    bundle.putSerializable("fragment_topo_model", (Serializable)this.e);
    gfx gfx = new gfx();
    gfx.setArguments(bundle);
    FragmentTransaction fragmentTransaction = getFragmentManager().beginTransaction();
    fragmentTransaction.add(2131758209, (Fragment)gfx);
    fragmentTransaction.commit();
    this.b = (ggj)new ggk(this);
    this.b.a(this.c.e());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\carteiradiaria\presentation\ListagemCarteiraInvestimentoDetalhesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */