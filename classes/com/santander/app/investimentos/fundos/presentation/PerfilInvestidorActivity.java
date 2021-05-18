package com.santander.app.investimentos.fundos.presentation;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.widget.TextView;
import gpu;
import grs;
import java.util.Collections;
import java.util.Comparator;
import jdo;
import jgy;
import jhl;
import jii;
import jiu;
import jiv;

public class PerfilInvestidorActivity extends grs implements jgy {
  private Activity a;
  
  private jiu b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private RecyclerView f;
  
  public void a(jdo paramjdo) {
    Collections.sort(paramjdo.a(), (Comparator<?>)new jhl(this));
    this.f.setAdapter((RecyclerView.Adapter)new jii(paramjdo.a()));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.a = (Activity)this;
    setContentView(2130968728);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131298033);
    gpu.a((Activity)this, actionBar, getResources().getString(2131298033));
    this.b = (jiu)new jiv(this);
    this.b.a();
    this.f = (RecyclerView)findViewById(2131755976);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    linearLayoutManager.setStackFromEnd(true);
    this.f.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\fundos\presentation\PerfilInvestidorActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */