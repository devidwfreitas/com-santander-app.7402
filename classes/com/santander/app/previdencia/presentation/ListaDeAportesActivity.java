package com.santander.app.previdencia.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import gpu;
import grs;
import java.io.Serializable;
import kcy;
import kdg;
import kep;
import keq;
import kez;
import kfu;
import kfv;
import mxn;

public class ListaDeAportesActivity extends grs implements keq {
  private kfu a;
  
  private ListView b;
  
  private Dialog c;
  
  private AdapterView.OnItemClickListener d() {
    return (AdapterView.OnItemClickListener)new kep(this);
  }
  
  public void a() {
    startActivityForResult(new Intent((Context)this, SemPrevidenciaActivity.class), 10);
  }
  
  public void a(kcy paramkcy) {
    this.b.setAdapter((ListAdapter)new kez((Context)this, paramkcy));
  }
  
  public void a(kdg paramkdg) {
    Intent intent = new Intent((Context)this, AporteActivity.class);
    intent.putExtra("aporte", (Serializable)paramkdg);
    startActivity(intent);
  }
  
  public void b() {
    this.c = mxn.b((Activity)this);
  }
  
  public void c() {
    if (this.c != null) {
      this.c.dismiss();
      this.c = null;
    } 
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setElevation(0.0F);
    gpu.a((Activity)this, actionBar, getString(2131296461));
    setContentView(2130968698);
    this.b = (ListView)findViewById(2131755876);
    this.b.setOnItemClickListener(d());
    this.a = (kfu)new kfv(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\previdencia\presentation\ListaDeAportesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */