package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;
import fhn;
import fho;
import fhp;
import fhq;
import fvk;
import gpu;
import grs;
import guk;
import hav;
import nai;

public class FazerPagamentoBoletoVR extends grs {
  private final String a = "FazerPagamentoBoletoVR";
  
  private Activity b;
  
  private fvk c;
  
  private Dialog d;
  
  private RadioGroup e;
  
  private RadioGroup f;
  
  private EditText g;
  
  private EditText w;
  
  private Button x;
  
  private guk y;
  
  private guk z;
  
  private void a() {
    int i = this.e.getCheckedRadioButtonId();
    View view = this.e.findViewById(i);
    i = this.e.indexOfChild(view);
    if (i == 0) {
      this.c.I("F");
    } else if (i == 1) {
      this.c.I("J");
    } else {
      hav.c(this.b, getResources().getString(2131296602));
      return;
    } 
    i = this.f.getCheckedRadioButtonId();
    view = this.f.findViewById(i);
    i = this.f.indexOfChild(view);
    if (i == 0) {
      this.c.J("F");
    } else if (i == 1) {
      this.c.J("J");
    } else {
      hav.c(this.b, getResources().getString(2131296603));
      return;
    } 
    try {
      if (!nai.e(this.g.getText().toString())) {
        this.g.requestFocus();
        hav.c((Activity)this, getResources().getString(2131297033));
        return;
      } 
      this.c.q(nai.a(this.g.getText().toString()));
      try {
        if (!nai.e(this.w.getText().toString())) {
          this.w.requestFocus();
          hav.c((Activity)this, getResources().getString(2131297033));
          return;
        } 
      } catch (Exception exception) {
        this.w.requestFocus();
        hav.c((Activity)this, exception.getMessage());
        return;
      } 
    } catch (Exception exception) {
      this.g.requestFocus();
      hav.c((Activity)this, exception.getMessage());
      return;
    } 
    this.c.r(nai.a(this.w.getText().toString()));
    (new fhq(this, null)).execute((Object[])new Void[0]);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969034);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    this.b = (Activity)this;
    gpu.a((Activity)this, actionBar, getString(2131297441));
    this.c = (fvk)getIntent().getSerializableExtra("pagamentoBean");
    this.e = (RadioGroup)findViewById(2131757229);
    this.e.check(2131757230);
    this.e.setOnCheckedChangeListener((RadioGroup.OnCheckedChangeListener)new fhn(this));
    this.f = (RadioGroup)findViewById(2131757234);
    this.f.check(2131757235);
    this.f.setOnCheckedChangeListener((RadioGroup.OnCheckedChangeListener)new fho(this));
    this.g = (EditText)findViewById(2131757232);
    this.y = new guk("F");
    this.y.a(this.g);
    this.g.addTextChangedListener((TextWatcher)this.y);
    this.w = (EditText)findViewById(2131757237);
    this.z = new guk("F");
    this.z.a(this.w);
    this.w.addTextChangedListener((TextWatcher)this.z);
    this.x = (Button)findViewById(2131757238);
    this.x.setOnClickListener((View.OnClickListener)new fhp(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\FazerPagamentoBoletoVR.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */