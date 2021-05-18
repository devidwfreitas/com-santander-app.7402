package com.santander.app.formalizacaodigital.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import gpu;
import grs;
import igl;
import ihm;
import ihn;
import iho;
import ihy;
import ihz;
import java.io.Serializable;
import java.util.List;
import mxn;

public class ListagemPropostasActivity extends grs implements ihn {
  private RecyclerView a;
  
  private ihy b;
  
  private Dialog c;
  
  private void a() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getResources().getText(2131297498).toString());
  }
  
  private void b() {
    this.a = (RecyclerView)findViewById(2131758234);
    this.b = (ihy)new ihz(this);
    this.c = mxn.b((Activity)this);
  }
  
  private View.OnClickListener c() {
    return (View.OnClickListener)new ihm(this);
  }
  
  public void a(igl paramigl) {
    Intent intent = new Intent((Context)this, DetalheFormalizacaoDigitalActivity.class);
    intent.putExtra("proposta", (Serializable)paramigl);
    startActivity(intent);
  }
  
  public void a(String paramString1, String paramString2) {
    mxn.a((Activity)this, paramString1, paramString2, true, "Fechar", true);
  }
  
  public void a(List<igl> paramList) {
    this.a.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.a.setHasFixedSize(true);
    this.a.setAdapter((RecyclerView.Adapter)new iho(paramList, c()));
    if (this.c != null) {
      this.c.dismiss();
      this.c = null;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969352);
    a();
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\formalizacaodigital\presentation\ListagemPropostasActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */