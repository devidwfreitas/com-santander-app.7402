package com.santander.app.integrationway.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ca.android.app.CaMDOProgressBar;
import gpu;
import grs;
import hat;
import jco;
import jcp;
import jcq;
import mxn;

public class IntegrationWayActivity extends grs implements jco {
  protected Context a;
  
  private jcp b;
  
  private ProgressBar c;
  
  private TextView d;
  
  public void a() {
    if (Build.VERSION.SDK_INT < 19) {
      getWindow().getDecorView();
      return;
    } 
    getWindow().getDecorView().setSystemUiVisibility(4098);
  }
  
  public void a(String paramString) {
    a(paramString);
  }
  
  public void a(String paramString1, String paramString2) {
    Intent intent = gpu.a((Activity)this);
    intent.putExtra("isway", true);
    intent.putExtra("way_action", paramString1);
    if (!TextUtils.isEmpty(paramString2))
      intent.putExtra("NUMEROCARTAO", paramString2); 
    startActivity(intent);
  }
  
  public void b() {
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      String str = (String)bundle.getSerializable("dlb-ticket");
      if (str != null) {
        this.b.a(str);
        this.b.b();
      } 
    } 
  }
  
  public void b(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, true, "OK");
  }
  
  public void c() {
    hat.d().a((Activity)this, null, true, true);
  }
  
  public void d() {
    CaMDOProgressBar.setVisibility(this.c, 0);
    this.d.setVisibility(0);
  }
  
  public void e() {
    CaMDOProgressBar.setVisibility(this.c, 8);
    this.d.setVisibility(8);
  }
  
  public void f() {
    onBackPressed();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == 0)
      finish(); 
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969212);
    this.a = (Context)this;
    a();
    this.c = (ProgressBar)findViewById(2131758444);
    this.d = (TextView)findViewById(2131758445);
    this.b = (jcp)new jcq(this);
    b();
  }
  
  protected void onPause() {
    super.onPause();
    finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\integrationway\presentation\IntegrationWayActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */