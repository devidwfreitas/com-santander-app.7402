package com.santander.app.previdencia.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import gpu;
import grs;
import java.util.List;
import kdg;
import kdi;
import ken;
import keo;
import kfc;
import kfr;
import kfs;
import miq;
import mxn;

public class DetalhePosicaoConsolidadaPrevidenciaActivity extends grs implements keo {
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private Button e;
  
  private Activity f;
  
  private Dialog g;
  
  private LinearLayout w;
  
  private kfr x;
  
  private kdg y;
  
  public kdg a() {
    return this.y;
  }
  
  public void a(String paramString) {
    mxn.b((Activity)this, paramString);
  }
  
  public void a(List<kdi> paramList) {
    kfc kfc = new kfc(paramList, (Context)this);
    for (int i = 0; i < kfc.getCount(); i++) {
      View view = kfc.getView(i, null, (ViewGroup)this.w);
      if (view != null)
        this.w.addView(view); 
    } 
  }
  
  public void b() {
    this.a = (TextView)findViewById(2131757900);
    this.b = (TextView)findViewById(2131757898);
    this.c = (TextView)findViewById(2131757902);
    this.d = (TextView)findViewById(2131757904);
    this.e = (Button)findViewById(2131757906);
    this.w = (LinearLayout)findViewById(2131757908);
    f();
    if (miq.C().b()) {
      this.e.setEnabled(false);
      return;
    } 
    this.e.setEnabled(true);
    this.e.setOnClickListener(e());
  }
  
  public void c() {
    this.g = mxn.b((Activity)this);
  }
  
  public void d() {
    if (this.g != null) {
      this.g.dismiss();
      this.g = null;
    } 
  }
  
  View.OnClickListener e() {
    return (View.OnClickListener)new ken(this);
  }
  
  public void f() {
    this.a.setText(this.y.f());
    this.b.setText(this.y.e());
    this.c.setText(this.y.g());
    this.d.setText(this.y.h());
    this.x = (kfr)new kfs(this);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.f = (Activity)this;
    this.y = (kdg)getIntent().getSerializableExtra("detalhePlano");
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setElevation(0.0F);
    gpu.a((Activity)this, actionBar, getString(2131298980));
    setContentView(2130968933);
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\previdencia\presentation\DetalhePosicaoConsolidadaPrevidenciaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */