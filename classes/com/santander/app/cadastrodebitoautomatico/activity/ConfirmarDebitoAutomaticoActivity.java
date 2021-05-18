package com.santander.app.cadastrodebitoautomatico.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import gab;
import gac;
import gpu;
import grs;
import naq;

public class ConfirmarDebitoAutomaticoActivity extends grs {
  private TextView A;
  
  private Button B;
  
  private TextView C;
  
  private TextView D;
  
  private final String a = "ConfirmarDebitoAutomaticoActivity";
  
  private gac b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private void b() {
    Intent intent = getIntent();
    intent.getExtras();
    this.b = (gac)intent.getSerializableExtra("EXTRADADOS");
  }
  
  void a() {
    b();
    this.c = (TextView)findViewById(2131756534);
    this.d = (TextView)findViewById(2131756536);
    this.e = (TextView)findViewById(2131756538);
    this.f = (TextView)findViewById(2131756541);
    this.g = (TextView)findViewById(2131756543);
    this.w = (TextView)findViewById(2131756545);
    this.x = (TextView)findViewById(2131756547);
    this.y = (TextView)findViewById(2131756549);
    this.z = (TextView)findViewById(2131756551);
    this.A = (TextView)findViewById(2131756553);
    this.C = (TextView)findViewById(2131756548);
    this.D = (TextView)findViewById(2131756552);
    this.B = (Button)findViewById(2131756380);
    this.c.setText(this.v.f().j());
    if (this.b.t() != null)
      this.d.setText(this.b.t()); 
    if (this.b.z() != null)
      this.e.setText(naq.h(this.b.v())); 
    if (this.b.l() != null)
      this.f.setText(this.b.l()); 
    if (this.b.k() != null)
      this.g.setText(this.b.k()); 
    if (this.b.p() != null)
      this.w.setText(this.b.p()); 
    if (this.b.n() != null) {
      String str;
      if (this.b.n().equals("S")) {
        str = "Sim";
      } else {
        str = "Não";
      } 
      this.x.setText(str);
    } 
    if (!this.b.D().equals("0,00")) {
      this.y.setText("R$" + this.b.D());
    } else {
      this.C.setVisibility(8);
      this.y.setVisibility(8);
    } 
    if (this.b.o() != null) {
      String str;
      if (this.b.o().equals("S")) {
        str = "Sim";
      } else {
        str = "Não";
      } 
      this.z.setText(str);
    } 
    if (this.b.C() != null)
      if (!this.b.C().equals("")) {
        this.A.setText(this.b.C());
      } else {
        this.D.setVisibility(8);
        this.A.setVisibility(8);
      }  
    this.B.setOnClickListener((View.OnClickListener)new gab(this));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968873);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, "Débito Automático");
    this.b = new gac();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cadastrodebitoautomatico\activity\ConfirmarDebitoAutomaticoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */