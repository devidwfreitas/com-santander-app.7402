package com.santander.app.dpp;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import gpu;
import grs;
import hdd;
import hde;
import heq;

public class DPPCondicoesContratoActivity extends grs {
  private DPPCondicoesContratoActivity a;
  
  private Button b;
  
  private Button c;
  
  private heq d;
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968999);
    this.a = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297251));
    this.b = (Button)findViewById(2131757046);
    this.c = (Button)findViewById(2131757045);
    this.d = (heq)getIntent().getExtras().getSerializable("dpp");
    this.b.setOnClickListener((View.OnClickListener)new hdd(this));
    this.c.setOnClickListener((View.OnClickListener)new hde(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\dpp\DPPCondicoesContratoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */