package com.santander.app.pagamentos.titulos.presentation;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.LinearLayout;
import gpu;
import grs;
import jsr;
import jve;
import jwd;
import jwe;

public class MaisInformacoesPagamentoActivity extends grs implements jve {
  private jwd a;
  
  private jsr b;
  
  private LinearLayout c;
  
  private void a() {
    this.c = (LinearLayout)findViewById(2131758318);
  }
  
  public void a(LinearLayout paramLinearLayout) {
    if (this.b == null) {
      this.c.setVisibility(8);
      return;
    } 
    this.c.addView((View)paramLinearLayout);
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968727);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    this.i = (Activity)this;
    gpu.a((Activity)this, actionBar, getString(2131298955));
    this.b = (jsr)getIntent().getExtras().getSerializable("ConsultaTitulos");
    a();
    this.a = (jwd)new jwe(this.i, this.b, this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\pagamentos\titulos\presentation\MaisInformacoesPagamentoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */