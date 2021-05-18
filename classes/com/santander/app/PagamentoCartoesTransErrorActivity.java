package com.santander.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.TextView;
import fja;
import ghu;
import gpu;
import grs;
import java.util.List;
import naj;
import nak;

public class PagamentoCartoesTransErrorActivity extends grs {
  private final String a = "PagamentoCartoesTransErrorActivity";
  
  private ghu b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private Activity f;
  
  public boolean a(Context paramContext) {
    boolean bool = false;
    List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < list.size()) {
        if (((ActivityManager.RunningAppProcessInfo)list.get(i)).processName.equals("com.santander.app")) {
          onDestroy();
          Process.killProcess(Process.myPid());
          return true;
        } 
      } else {
        return bool1;
      } 
    } 
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969401);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    this.f = (Activity)this;
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131298323));
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      this.b = (ghu)bundle.get("cartao");
      this.c = bundle.getString("cantidad");
      this.d = nak.l(bundle.getString("fecha"));
      this.e = bundle.getString("errorMsg");
    } 
    ((TextView)findViewById(2131756350)).setText(this.b.b());
    TextView textView = (TextView)findViewById(2131756352);
    String[] arrayOfString = this.b.o().c().split("-");
    if (arrayOfString.length >= 3)
      textView.setText(arrayOfString[2] + "/" + arrayOfString[1] + "/" + arrayOfString[0]); 
    ((TextView)findViewById(2131759171)).setText(this.d);
    ((TextView)findViewById(2131759173)).setText(naj.f(this.b.o().h()));
    ((TextView)findViewById(2131759177)).setText(naj.f(this.c));
    findViewById(2131758571).setOnClickListener((View.OnClickListener)new fja(this));
    if (this.e != null && this.e.length() > 0) {
      textView = (TextView)findViewById(2131756495);
      textView.setText(this.e);
      textView.setVisibility(0);
    } 
  }
  
  protected void onDestroy() {
    super.onDestroy();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\PagamentoCartoesTransErrorActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */