package com.santander.app.cartoes.parcelamentofatura.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import ghu;
import ghw;
import gid;
import gif;
import giy;
import gjg;
import gjh;
import gjj;
import gjk;
import gpu;
import grs;
import java.io.Serializable;
import mxn;
import naf;
import naj;
import nak;

public class ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity extends grs implements giy {
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private String D;
  
  private gjj E;
  
  private final String a = "ParcelamentoFaturaCorrentistaConfirmacaoActivity";
  
  private ghw b;
  
  private gif c;
  
  private ghu d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private String a(String paramString) {
    naf naf = new naf();
    try {
      return naf.c(Base64.decode(paramString.trim().getBytes("UTF-8"), 0));
    } catch (Exception exception) {
      Log.e("ERRO_CRYPTO", exception.getMessage());
      return "";
    } 
  }
  
  private void c() {
    this.b = (ghw)getIntent().getExtras().getSerializable("calculoParcelarFatura");
    this.c = (gif)getIntent().getExtras().getSerializable("parcelaSelecionada");
    this.d = (ghu)getIntent().getExtras().getSerializable("cartaoSelecionado");
    Button button = (Button)findViewById(2131758356);
    this.e = (TextView)findViewById(2131758346);
    this.f = (TextView)findViewById(2131758347);
    this.g = (TextView)findViewById(2131758348);
    this.w = (TextView)findViewById(2131758349);
    this.x = (TextView)findViewById(2131758350);
    this.y = (TextView)findViewById(2131758351);
    this.z = (TextView)findViewById(2131758352);
    this.A = (TextView)findViewById(2131758353);
    this.B = (TextView)findViewById(2131758354);
    this.C = (TextView)findViewById(2131758355);
    ImageView imageView = (ImageView)findViewById(2131758345);
    button.setOnClickListener((View.OnClickListener)new gjg(this));
    imageView.setOnClickListener((View.OnClickListener)new gjh(this));
    this.E = (gjj)new gjk(this);
  }
  
  private String d() {
    return (this.b.t() != null && this.b.t().length() > 0) ? ((Float.parseFloat(this.b.t()) > 0.0F) ? naj.s(this.b.t()) : naj.f(String.valueOf(Float.parseFloat(this.c.d()) / 100.0F))) : naj.f(String.valueOf(Float.parseFloat(this.c.d()) / 100.0F));
  }
  
  public void a() {
    int i = Float.valueOf(Float.parseFloat(this.c.c())).intValue();
    String str = naj.f(String.valueOf(Float.parseFloat(this.c.d()) / 100.0F));
    this.D = d();
    this.e.setText(naj.E(a(this.d.H())));
    this.f.setText(nak.m(this.b.g()));
    this.g.setText(naj.f((Float.parseFloat(this.b.w().replace("+", "")) / 100.0F) + ""));
    this.w.setText(String.valueOf(i));
    this.x.setText(this.D);
    this.y.setText(str);
    this.z.setText(naj.f((Float.parseFloat(this.b.v().replace("+", "")) / 100.0F) + ""));
    this.A.setText(naj.f((Float.parseFloat(this.b.s().replace("+", "")) / 100.0F) + ""));
    this.B.setText(naj.F(this.b.p()));
    this.C.setText(naj.F(this.b.f().replace("+", "")));
  }
  
  public void a(gid paramgid) {
    Intent intent = new Intent((Context)this, ParcelamentoFaturaNaoCorrentistaComprovanteActivity.class);
    intent.putExtra("codigoBarrasParcelamentoFatura", (Serializable)paramgid);
    intent.putExtra("valorPrimeiraParcela", this.D);
    startActivity(intent);
  }
  
  public void b() {}
  
  public void b(gid paramgid) {
    mxn.e((Activity)this, paramgid.b());
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969409);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131298342));
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cartoes\parcelamentofatura\presentation\ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */