package com.santander.app.cambio.transferenciaexterior.presentation;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import gbb;
import gcu;
import gpu;
import grs;
import gui;

public class MotivoEnvioEditActivity extends grs {
  private gbb a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private EditText e;
  
  private Button f;
  
  private void a() {
    if (!this.a.d().isEmpty()) {
      this.b.setText(this.a.d());
    } else {
      this.b.setVisibility(8);
    } 
    if (!this.a.d().isEmpty()) {
      this.c.setText(this.a.e());
    } else {
      this.c.setVisibility(8);
    } 
    if (!this.a.f().isEmpty()) {
      this.d.setText(this.a.f());
      return;
    } 
    this.d.setVisibility(8);
  }
  
  private void b() {
    gui gui = new gui();
    this.b = (TextView)findViewById(2131755821);
    this.c = (TextView)findViewById(2131756201);
    this.d = (TextView)findViewById(2131759097);
    this.e = (EditText)findViewById(2131756703);
    gui.a(this.e);
    this.e.addTextChangedListener((TextWatcher)gui);
    this.f = (Button)findViewById(2131756931);
    this.f.setOnClickListener((View.OnClickListener)new gcu(this));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969376);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297094));
    this.a = (gbb)getIntent().getExtras().getSerializable("motivo_envio_edit");
    b();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cambio\transferenciaexterior\presentation\MotivoEnvioEditActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */