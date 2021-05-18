package com.santander.app;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import fgy;
import fgz;
import fun;
import ghu;
import goj;
import gpu;

public class CadastramentoTransOkActivity extends goj {
  private final String a = "CadastramentoTransOkActivity";
  
  private CadastramentoTransOkActivity b;
  
  private int c;
  
  private int f;
  
  private ImageView g;
  
  private LinearLayout w;
  
  private LinearLayout x;
  
  public String a() {
    this.w.setVisibility(8);
    this.x.setVisibility(8);
    this.g.setVisibility(0);
    return a(2131756346);
  }
  
  public void b() {
    this.w.setVisibility(0);
    this.x.setVisibility(0);
    this.g.setVisibility(8);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968822);
    this.b = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297338));
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      this.c = bundle.getInt("strSeqEnd");
      this.f = bundle.getInt("numCartao");
    } 
    TextView textView1 = (TextView)findViewById(2131756350);
    TextView textView2 = (TextView)findViewById(2131756352);
    TextView textView3 = (TextView)findViewById(2131756353);
    textView1.setText(((ghu)this.v.f().s().d().get(this.f)).b());
    textView2.setText(((ghu)this.v.f().s().d().get(this.f)).n().c());
    textView3.setText(((fun)((ghu)this.v.f().s().d().get(this.f)).m().g().get(this.c)).b());
    this.g = (ImageView)findViewById(2131755251);
    this.w = (LinearLayout)findViewById(2131756354);
    this.w.setOnClickListener((View.OnClickListener)new fgy(this));
    this.x = (LinearLayout)findViewById(2131756355);
    this.x.setOnClickListener((View.OnClickListener)new fgz(this));
    b();
  }
  
  protected void onResume() {
    super.onResume();
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\CadastramentoTransOkActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */