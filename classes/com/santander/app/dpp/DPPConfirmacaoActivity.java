package com.santander.app.dpp;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import gpu;
import grs;
import hdf;
import heq;
import java.io.Serializable;
import java.text.NumberFormat;
import mzr;
import nai;
import naq;

@SuppressLint({"NewApi"})
public class DPPConfirmacaoActivity extends grs implements Serializable {
  private static final long a = 1L;
  
  private int A;
  
  private TextView B;
  
  private int C;
  
  private Activity D;
  
  private boolean E = true;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private heq z;
  
  private String a(String paramString) {
    double d = Double.parseDouble(paramString.replaceAll("[R$,.]", ""));
    paramString = NumberFormat.getCurrencyInstance().format(d / 100.0D).substring(2);
    return "R$ " + paramString;
  }
  
  private void a() {
    this.b.setText(mzr.g());
    this.z.p(mzr.g());
    this.c.setText(nai.j(this.v.f().k().toString()));
    this.z.t(this.v.f().k().toString());
    if (this.z.g() == null) {
      this.d.setText("Nova Conta");
    } else {
      this.d.setText(naq.c(this.z.d(), this.z.g()));
    } 
    this.e.setText(a(this.z.s()));
    this.f.setText(this.z.n());
    this.g.setText(this.z.a());
    int i = Integer.parseInt(this.z.r());
    if (i == 0) {
      this.w.setText("Indeterminado");
    } else {
      this.w.setText(String.valueOf(i));
    } 
    this.y.setText(this.z.b());
    this.x.setText(naq.c(this.z.c(), this.z.f()));
    if (this.A == 2) {
      this.B.setVisibility(0);
      this.g.setText(this.z.l().toString().substring(3));
      this.f.setText(this.z.l().toString().substring(0, 2));
      this.y.setText(this.z.j().toString().substring(3));
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969000);
    this.D = (Activity)this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297251));
    this.b = (TextView)findViewById(2131757049);
    this.c = (TextView)findViewById(2131757051);
    this.d = (TextView)findViewById(2131757053);
    this.e = (TextView)findViewById(2131757055);
    this.f = (TextView)findViewById(2131757057);
    this.g = (TextView)findViewById(2131757059);
    this.w = (TextView)findViewById(2131757061);
    this.y = (TextView)findViewById(2131757063);
    Button button = (Button)findViewById(2131757065);
    this.B = (TextView)findViewById(2131757064);
    this.x = (TextView)findViewById(2131757024);
    Bundle bundle = getIntent().getExtras();
    this.z = (heq)bundle.getSerializable("dpp");
    this.A = bundle.getInt("opcao");
    this.C = bundle.getInt("novaPoupanca");
    if (bundle.getString("isProprioCliente") != null) {
      boolean bool;
      if (bundle.getString("isProprioCliente").equals("true")) {
        bool = true;
      } else {
        bool = false;
      } 
      this.E = bool;
    } 
    a();
    button.setOnClickListener((View.OnClickListener)new hdf(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\dpp\DPPConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */