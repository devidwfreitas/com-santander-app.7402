package com.santander.app.segundaviacomprovantes.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import gpu;
import grs;
import hat;
import klu;
import kmv;
import kmw;
import kmx;
import kmy;
import kmz;
import kna;
import knd;
import kni;
import knj;
import mxn;

public class SegundaViaActivity extends grs implements knd {
  private klu A;
  
  private String a = "ComprovanteActivity";
  
  private Activity b;
  
  private ImageView c;
  
  private Spinner d;
  
  private Spinner e;
  
  private Button f;
  
  private RelativeLayout g;
  
  private Button w;
  
  private Button x;
  
  private kni y;
  
  private Dialog z;
  
  public void a() {
    this.c = (ImageView)findViewById(2131758383);
    this.w = (Button)findViewById(2131758378);
    this.x = (Button)findViewById(2131758379);
    this.g = (RelativeLayout)findViewById(2131758376);
    this.d = (Spinner)findViewById(2131758371);
    this.e = (Spinner)findViewById(2131758375);
    this.f = (Button)findViewById(2131758381);
    this.c.setOnClickListener(f());
    this.y.b();
    d();
    e();
    this.A = new klu();
    this.y.c();
    b();
    c();
  }
  
  public void a(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, true, "OK");
  }
  
  public void a(klu paramklu) {
    this.A = paramklu;
  }
  
  public void b() {
    this.w.setOnClickListener((View.OnClickListener)new kmv(this));
  }
  
  public void c() {
    this.x.setOnClickListener((View.OnClickListener)new kmw(this));
  }
  
  public void d() {
    this.e.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new kmx(this));
  }
  
  public void e() {
    this.d.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new kmy(this));
  }
  
  View.OnClickListener f() {
    return (View.OnClickListener)new kmz(this);
  }
  
  public View.OnClickListener g() {
    return (View.OnClickListener)new kna(this);
  }
  
  public Activity h() {
    return this.b;
  }
  
  public String i() {
    return this.a;
  }
  
  public Spinner j() {
    return this.e;
  }
  
  public Spinner k() {
    return this.d;
  }
  
  public void n() {
    hat.d().a((Activity)this, null, true, true);
  }
  
  public void o() {
    this.z = mxn.b((Activity)this);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969480);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131299003));
    this.b = (Activity)this;
    this.y = (kni)new knj(this);
    a();
  }
  
  public void p() {
    if (this.z != null && this.z.isShowing()) {
      this.z.dismiss();
      this.z.cancel();
      this.z = null;
    } 
  }
  
  public klu q() {
    return this.A;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\segundaviacomprovantes\presentation\SegundaViaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */