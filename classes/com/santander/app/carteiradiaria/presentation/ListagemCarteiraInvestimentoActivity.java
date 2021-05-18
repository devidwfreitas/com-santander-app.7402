package com.santander.app.carteiradiaria.presentation;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import frq;
import ger;
import gev;
import gew;
import gfg;
import gfs;
import gft;
import gfv;
import gfx;
import ggc;
import gpu;
import grs;
import java.io.Serializable;

public class ListagemCarteiraInvestimentoActivity extends grs implements gfv {
  private RecyclerView a;
  
  private gfg b;
  
  private ger c;
  
  private gew d;
  
  private void a() {
    this.a = (RecyclerView)findViewById(2131758210);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    this.a.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
  }
  
  private void a(gfg paramgfg, gev paramgev) {
    switch (gft.a[paramgfg.ordinal()]) {
      default:
        return;
      case 1:
        frq.d("Investimentos_CarteiraDiaria_PosicaoConsolidada_RendaFixa_Acao", paramgev.a());
        return;
      case 2:
        frq.d("Investimentos_CarteiraDiaria_PosicaoConsolidada_Fundos_Acao", paramgev.a());
        return;
      case 3:
        frq.d("Investimentos_CarteiraDiaria_PosicaoConsolidada_RendaVariavel_Acao", paramgev.a());
        return;
      case 4:
        break;
    } 
    frq.d("Investimentos_CarteiraDiaria_PosicaoConsolidada_Derivativos_Acao", paramgev.a());
  }
  
  public void a(ger paramger) {
    this.a.setAdapter((RecyclerView.Adapter)new ggc(paramger.a, (View.OnClickListener)new gfs(this)));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968700);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    this.b = (gfg)getIntent().getExtras().getSerializable("tipo_carteira_enum");
    this.c = (ger)getIntent().getExtras().getSerializable("carteira_diaria_model");
    this.d = (gew)getIntent().getExtras().getSerializable("fragment_topo_model");
    gpu.a((Activity)this, actionBar, this.b.getName());
    a();
    Bundle bundle = new Bundle();
    bundle.putSerializable("tipo_carteira_enum", (Serializable)this.b);
    bundle.putSerializable("fragment_topo_model", (Serializable)this.d);
    gfx gfx = new gfx();
    gfx.setArguments(bundle);
    FragmentTransaction fragmentTransaction = getFragmentManager().beginTransaction();
    fragmentTransaction.add(2131758209, (Fragment)gfx);
    fragmentTransaction.commit();
    a(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\carteiradiaria\presentation\ListagemCarteiraInvestimentoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */