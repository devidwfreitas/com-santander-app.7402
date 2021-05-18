package com.santander.app.cartoes.parcelamentofatura.presentation;

import android.app.Activity;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.HomeLogadaNaoCorrentistaActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import gid;
import gjd;
import gje;
import gjf;
import goj;
import gpu;
import nak;

public class ParcelamentoFaturaNaoCorrentistaComprovanteActivity extends goj {
  private static final String a = "ParcelamentoFaturaNaoCorrentistaComprovanteActivity";
  
  private TextView A;
  
  private Button B;
  
  private String C;
  
  private gid D;
  
  private ClipboardManager E;
  
  private LinearLayout b;
  
  private LinearLayout c;
  
  private LinearLayout f;
  
  private ImageView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private void c() {
    String str = nak.b();
    this.b = (LinearLayout)findViewById(2131755434);
    this.c = (LinearLayout)findViewById(2131755436);
    this.f = (LinearLayout)findViewById(2131755437);
    this.g = (ImageView)findViewById(2131755251);
    this.w = (TextView)findViewById(2131755417);
    this.x = (TextView)findViewById(2131755425);
    this.y = (TextView)findViewById(2131755423);
    this.z = (TextView)findViewById(2131755420);
    this.A = (TextView)findViewById(2131755422);
    this.B = (Button)findViewById(2131755421);
    this.w.setText("Parcelamento de Fatura realizado com sucesso!");
    this.x.setText(this.D.getAutenticacao());
    this.y.setText(str);
    this.z.setText(this.D.c().trim());
    this.A.setText(this.C);
    this.f.setOnClickListener((View.OnClickListener)new gjd(this));
    this.c.setOnClickListener((View.OnClickListener)new gje(this));
    this.B.setOnClickListener((View.OnClickListener)new gjf(this));
  }
  
  public void a() {
    this.c.setVisibility(0);
    this.f.setVisibility(0);
    this.g.setVisibility(8);
  }
  
  public String b() {
    this.c.setVisibility(8);
    this.f.setVisibility(8);
    this.b.setVisibility(8);
    this.g.setVisibility(0);
    return a(2131755416);
  }
  
  public void onBackPressed() {
    Intent intent;
    if (this.v.f().e().booleanValue()) {
      intent = new Intent((Context)this, HomeLogadaNaoCorrentistaActivity.class);
    } else {
      intent = new Intent((Context)this, HomeLogadaActivity.class);
    } 
    startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.D = (gid)getIntent().getExtras().getSerializable("codigoBarrasParcelamentoFatura");
    this.C = (String)getIntent().getExtras().get("valorPrimeiraParcela");
    setContentView(2130968629);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, "Parcelamento de Fatura");
    this.E = (ClipboardManager)getSystemService("clipboard");
    c();
  }
  
  protected void onResume() {
    super.onResume();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cartoes\parcelamentofatura\presentation\ParcelamentoFaturaNaoCorrentistaComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */