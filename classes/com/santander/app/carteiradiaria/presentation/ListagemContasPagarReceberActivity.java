package com.santander.app.carteiradiaria.presentation;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import ger;
import gew;
import gfg;
import gfw;
import gfx;
import ggf;
import ggl;
import ggm;
import gpu;
import grs;
import java.io.Serializable;

public class ListagemContasPagarReceberActivity extends grs implements gfw {
  private RecyclerView a;
  
  private ggl b;
  
  private gfg c;
  
  private ger d;
  
  private gew e;
  
  private void a() {
    this.a = (RecyclerView)findViewById(2131758213);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    this.a.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
  }
  
  public void a(ger paramger) {
    this.a.setAdapter((RecyclerView.Adapter)new ggf(paramger.a, this.i));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968703);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131297895));
    this.c = (gfg)getIntent().getExtras().getSerializable("tipo_carteira_enum");
    this.d = (ger)getIntent().getExtras().getSerializable("carteira_diaria_model");
    this.e = (gew)getIntent().getExtras().getSerializable("fragment_topo_model");
    a();
    Bundle bundle = new Bundle();
    bundle.putSerializable("tipo_carteira_enum", (Serializable)this.c);
    bundle.putSerializable("fragment_topo_model", (Serializable)this.e);
    gfx gfx = new gfx();
    gfx.setArguments(bundle);
    FragmentTransaction fragmentTransaction = getFragmentManager().beginTransaction();
    fragmentTransaction.add(2131758212, (Fragment)gfx);
    fragmentTransaction.commit();
    this.b = (ggl)new ggm(this, this.d, this.c);
    this.b.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\carteiradiaria\presentation\ListagemContasPagarReceberActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */