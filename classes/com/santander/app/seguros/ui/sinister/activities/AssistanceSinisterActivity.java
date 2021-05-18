package com.santander.app.seguros.ui.sinister.activities;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import ejm;
import frq;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kvq;
import lpp;
import lpq;
import lpr;
import lud;
import lug;
import lxv;

public class AssistanceSinisterActivity extends grs {
  public static String a = "sinister-coverage-list";
  
  public static final String b = "phone-assistance";
  
  private List<kvq> A;
  
  private String B;
  
  private List<kvq> c;
  
  private lud d;
  
  private lxv e;
  
  private TextView f;
  
  private RecyclerView g;
  
  private TextView w;
  
  private Button x;
  
  private Button y;
  
  private String z;
  
  private void a(List<kvq> paramList) {
    this.d = new lud(paramList);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this, 1, false);
    this.g.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.g.setAdapter((RecyclerView.Adapter)this.d);
    this.d.a((lug)new lpp(this, paramList));
  }
  
  private void b() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131297649));
  }
  
  private void c() {
    this.w.setText(getResources().getString(2131298822));
  }
  
  private void d() {
    this.f = (TextView)findViewById(2131755283);
    this.g = (RecyclerView)findViewById(2131755284);
    this.w = (TextView)findViewById(2131755286);
    this.x = (Button)findViewById(2131755287);
    this.y = (Button)findViewById(2131755288);
    a();
  }
  
  public void a() {
    String str;
    if (!this.B.isEmpty()) {
      str = this.B;
    } else {
      str = getResources().getString(2131298796);
    } 
    this.x.setText(str);
    this.x.setOnClickListener((View.OnClickListener)new lpq(this, str));
    this.y.setOnClickListener((View.OnClickListener)new lpr(this));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968611);
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey(a))
      this.A = new ArrayList<kvq>(Arrays.asList((Object[])(new ejm()).a(getIntent().getExtras().getString(a), kvq[].class))); 
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("phone-assistance"))
      this.B = getIntent().getExtras().getString("phone-assistance"); 
    d();
    c();
    b();
    if (this.A != null && this.A.size() > 0)
      a(this.A); 
    frq.d("Seguros_Sinistro_Acionar_Acao", "PopUpAssistencia24h");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\AssistanceSinisterActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */