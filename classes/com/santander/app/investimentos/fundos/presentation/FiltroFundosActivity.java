package com.santander.app.investimentos.fundos.presentation;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.santander.app.components.view.SantanderButtonView;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.List;
import jdv;
import jdw;
import jge;
import jgf;
import jif;

public class FiltroFundosActivity extends grs {
  private RecyclerView a;
  
  private List<jdw> b;
  
  private SantanderButtonView c;
  
  private Activity d;
  
  private jdw e;
  
  private MenuItem f;
  
  private View.OnClickListener c() {
    return (View.OnClickListener)new jgf(this);
  }
  
  public void a() {
    this.a.setAdapter((RecyclerView.Adapter)new jif(b(), c()));
  }
  
  public List<jdw> b() {
    this.b = new ArrayList<jdw>();
    jdw jdw1 = new jdw();
    jdw1.a("Menor Valor");
    jdw1.a(jdv.MENOR_VALOR);
    this.b.add(jdw1);
    jdw1 = new jdw();
    jdw1.a("Maior Valor");
    jdw1.a(jdv.MAIOR_VALOR);
    this.b.add(jdw1);
    jdw1 = new jdw();
    jdw1.a("Menor Rentabilidade");
    jdw1.a(jdv.MENOR_RENTABILIDADE);
    this.b.add(jdw1);
    jdw1 = new jdw();
    jdw1.a("Maior Rentabilidade");
    jdw1.a(jdv.MAIOR_RENTABILIDADE);
    this.b.add(jdw1);
    return this.b;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.d = (Activity)this;
    setContentView(2130968678);
    this.c = (SantanderButtonView)findViewById(2131755784);
    this.c.setEnabled(false);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getResources().getString(2131298030));
    this.e = null;
    this.a = (RecyclerView)findViewById(2131755783);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    linearLayoutManager.setStackFromEnd(true);
    this.a.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    a();
    this.c.setOnClickListener((View.OnClickListener)new jge(this));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886090, paramMenu);
    this.f = paramMenu.getItem(0);
    this.f.setVisible(true);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return true;
      case 2131759625:
        break;
    } 
    finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\fundos\presentation\FiltroFundosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */