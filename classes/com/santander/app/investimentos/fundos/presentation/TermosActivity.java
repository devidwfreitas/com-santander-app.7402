package com.santander.app.investimentos.fundos.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import gpu;
import grs;
import jdx;
import jel;
import jgx;
import jhm;
import jis;
import jit;
import mxn;

public class TermosActivity extends grs implements jgx {
  private jdx a;
  
  private TextView b;
  
  private jis c;
  
  private Dialog d;
  
  public void a(String paramString) {
    this.d = mxn.a(this.i, paramString, this.i.getResources().getString(2131296719), (View.OnClickListener)new jhm(this));
  }
  
  public void a(jel paramjel) {
    this.b = (TextView)findViewById(2131756107);
    String str = Html.fromHtml(paramjel.b()).toString();
    this.b.setText((CharSequence)Html.fromHtml(str));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968752);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, "Aplicação");
    this.a = (jdx)getIntent().getExtras().getSerializable("fundos_confirmacao");
    this.c = (jis)new jit(this);
    this.c.a(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\fundos\presentation\TermosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */