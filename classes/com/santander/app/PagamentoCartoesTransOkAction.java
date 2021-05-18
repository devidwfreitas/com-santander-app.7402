package com.santander.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import fjb;
import fjc;
import frq;
import ghu;
import goj;
import gpu;
import hau;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import myk;
import naj;
import nak;

public class PagamentoCartoesTransOkAction extends goj {
  private final String a = "PagamentoCartoesTransOkAction";
  
  private myk b = new myk();
  
  private Intent c = null;
  
  private PagamentoCartoesTransOkAction f;
  
  private ghu g;
  
  private int w;
  
  private int x;
  
  private String y;
  
  private String z;
  
  private void a(String paramString) {}
  
  public String a() {
    return a(2131756334);
  }
  
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
    setContentView(2130969402);
    this.f = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298323));
    LinearLayout linearLayout1 = (LinearLayout)findViewById(2131755436);
    LinearLayout linearLayout2 = (LinearLayout)findViewById(2131755437);
    linearLayout1.setOnClickListener((View.OnClickListener)new fjb(this, linearLayout1, linearLayout2));
    linearLayout2.setOnClickListener((View.OnClickListener)new fjc(this));
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      this.g = (ghu)bundle.getSerializable("cartao");
      this.x = bundle.getInt("tipo");
      this.y = bundle.getString("cantidad");
      this.z = nak.l(bundle.getString("fecha"));
    } 
    ((TextView)findViewById(2131756350)).setText(this.g.b().replaceAll("-", "/"));
    ((TextView)findViewById(2131759191)).setText(this.g.o().f());
    TextView textView2 = (TextView)findViewById(2131756352);
    String[] arrayOfString = this.g.o().c().split("-");
    textView2.setText(arrayOfString[2] + "/" + arrayOfString[1] + "/" + arrayOfString[0]);
    ((TextView)findViewById(2131759171)).setText(this.z);
    if (this.x == 1) {
      ((TextView)findViewById(2131759189)).setVisibility(0);
      textView2 = (TextView)findViewById(2131759153);
      textView2.setVisibility(0);
      textView2.setText(naj.f(this.g.o().m()));
      ((TextView)findViewById(2131759172)).setVisibility(8);
      ((TextView)findViewById(2131759173)).setVisibility(8);
    } else {
      ((TextView)findViewById(2131759173)).setText(naj.f(this.g.o().h()));
    } 
    ((TextView)findViewById(2131759177)).setText(naj.f(this.y));
    String str = (new SimpleDateFormat("dd/MM/yyyy HH:mm")).format(new Date());
    ((TextView)findViewById(2131756353)).setText(str);
    TextView textView1 = (TextView)findViewById(2131756348);
    if (textView1 != null && textView1.getText() != null && textView1.getText().toString().length() > 0 && hau.a().z())
      textView1.setText(textView1.getText().toString().replace("realizad", "agendad")); 
    frq.a("Cartoes_PagamentoDeFatura");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\PagamentoCartoesTransOkAction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */