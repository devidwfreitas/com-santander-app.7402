package com.santander.app.desbloqueio.cartao.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import frq;
import goj;
import gpu;
import hci;
import hcj;
import hcs;
import hct;

public class DesbloqueioCartaoComprovanteActivity extends goj {
  private LinearLayout A;
  
  private LinearLayout B;
  
  private ImageView C;
  
  private String D;
  
  private DesbloqueioCartaoComprovanteActivity E;
  
  private final String a = "DesbloqueioCartaoComprovanteActivity";
  
  private TextView b;
  
  private TextView c;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private void a(hcs paramhcs) {
    this.c.setText(((hct)paramhcs.b().get(0)).h());
    this.f.setText(((hct)paramhcs.b().get(0)).p());
    this.g.setText(((hct)paramhcs.b().get(0)).n());
    this.x.setText(((hct)paramhcs.b().get(0)).q());
    this.z.setText(paramhcs.d() + " " + paramhcs.e());
    this.y.setText(paramhcs.f());
  }
  
  private void c() {
    this.b = (TextView)findViewById(2131756348);
    this.c = (TextView)findViewById(2131756752);
    this.f = (TextView)findViewById(2131756754);
    this.g = (TextView)findViewById(2131756756);
    this.x = (TextView)findViewById(2131756758);
    this.y = (TextView)findViewById(2131755425);
    this.z = (TextView)findViewById(2131756759);
    this.A = (LinearLayout)findViewById(2131755436);
    this.B = (LinearLayout)findViewById(2131755437);
    this.C = (ImageView)findViewById(2131755251);
    hcs hcs = (hcs)getIntent().getSerializableExtra("cartaoDesloqueioModel");
    a(hcs);
    String str1 = hcs.d();
    String str2 = hcs.e();
    this.D = "Desbloqueio de Cartão " + str1 + " " + str2.substring(0, 5);
    this.B.setOnClickListener((View.OnClickListener)new hci(this));
    this.A.setOnClickListener((View.OnClickListener)new hcj(this));
  }
  
  public void a() {
    this.A.setVisibility(0);
    this.B.setVisibility(0);
    this.C.setVisibility(8);
  }
  
  public String b() {
    this.A.setVisibility(8);
    this.B.setVisibility(8);
    this.C.setVisibility(0);
    return a(2131755416);
  }
  
  public void onBackPressed() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968913);
    this.E = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, "Desbloqueio de Cartão");
    c();
    frq.a("Cartoes_DesbloqueioDeCartao");
  }
  
  protected void onResume() {
    super.onResume();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\desbloqueio\cartao\activity\DesbloqueioCartaoComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */