package com.santander.app.recargatelefone.recargaconfirmacao.presnetation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.widget.LinearLayout;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.recargatelefone.listarecargaprogramada.presentation.RecargaProgramadaExclusaoConfirmacaoActivity;
import com.santander.app.recargatelefone.recargavalidacao.presentation.RecargaValidacaoActivity;
import gpu;
import grs;
import java.io.Serializable;
import kgj;
import kic;
import kid;
import kjd;
import kjf;

public class RecargaConfirmacaoActivity extends grs implements kjf {
  private static final String y = "RecargaConfirmacaoActivity";
  
  private SantanderTextView a;
  
  private SantanderTextView b;
  
  private SantanderTextView c;
  
  private SantanderTextView d;
  
  private SantanderTextView e;
  
  private SantanderTextView f;
  
  private SantanderTextView g;
  
  private LinearLayout w;
  
  private SantanderButtonView x;
  
  public void a() {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      gpu.a((Activity)this, actionBar, getString(2131298438));
    } 
  }
  
  public void a(String paramString) {
    this.a.setText(paramString);
  }
  
  public void a(String paramString, int paramInt) {
    this.g.setTextColor(getResources().getColor(paramInt));
    this.g.setText(paramString);
  }
  
  public void a(kgj paramkgj) {
    Intent intent = new Intent((Context)this, RecargaProgramadaExclusaoConfirmacaoActivity.class);
    intent.putExtra("request", (Serializable)paramkgj);
    startActivity(intent);
  }
  
  public void a(kic paramkic) {
    Intent intent = new Intent((Context)this, RecargaValidacaoActivity.class);
    intent.putExtra("tipo_recarga", 0);
    intent.putExtra("data", (Serializable)paramkic);
    startActivity(intent);
  }
  
  public void a(kid paramkid) {
    Intent intent = new Intent((Context)this, RecargaValidacaoActivity.class);
    intent.putExtra("tipo_recarga", 2);
    intent.putExtra("data", (Serializable)paramkid);
    startActivity(intent);
  }
  
  public void b() {
    this.w.setVisibility(0);
  }
  
  public void b(String paramString) {
    this.b.setText(paramString);
  }
  
  public void b(kic paramkic) {
    Intent intent = new Intent((Context)this, RecargaValidacaoActivity.class);
    intent.putExtra("tipo_recarga", 1);
    intent.putExtra("data", (Serializable)paramkic);
    startActivity(intent);
  }
  
  public void c() {
    this.w.setVisibility(8);
  }
  
  public void d(String paramString) {
    this.c.setText(paramString);
  }
  
  public void e(String paramString) {
    this.d.setText(paramString);
  }
  
  public void f(String paramString) {
    this.e.setText(paramString);
  }
  
  public void g(String paramString) {
    this.f.setText(paramString);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968731);
    kjd kjd = new kjd(this);
    this.a = (SantanderTextView)findViewById(2131755977);
    this.b = (SantanderTextView)findViewById(2131755831);
    this.c = (SantanderTextView)findViewById(2131755978);
    this.d = (SantanderTextView)findViewById(2131755980);
    this.e = (SantanderTextView)findViewById(2131755981);
    this.f = (SantanderTextView)findViewById(2131755982);
    this.g = (SantanderTextView)findViewById(2131755983);
    this.w = (LinearLayout)findViewById(2131755979);
    this.x = (SantanderButtonView)findViewById(2131755277);
    this.x.setOnClickListener(kjd.a());
    kjd.a(getIntent());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\recargatelefone\recargaconfirmacao\presnetation\RecargaConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */