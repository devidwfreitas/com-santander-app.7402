package com.santander.app.perfil.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import gpu;
import grs;
import java.util.List;
import kax;
import kbi;
import kbq;

public class GerenciarDispositivoActivity extends grs {
  public Activity a;
  
  private final String b = "GerenciarDispositivoActivity";
  
  private Dialog c;
  
  private TextView d;
  
  private TextView e;
  
  private List<kbq> f;
  
  private ListView g;
  
  private void a() {
    this.d = (TextView)findViewById(2131755798);
    this.e = (TextView)findViewById(2131755799);
    this.g = (ListView)findViewById(2131755801);
    (new kax(this, null)).execute((Object[])new kby[0]);
  }
  
  private void b() {
    this.g.setAdapter((ListAdapter)new kbi((Context)this, this.f));
    this.g.setCacheColorHint(0);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131298951));
    setContentView(2130968684);
    this.a = (Activity)this;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\perfil\activity\GerenciarDispositivoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */